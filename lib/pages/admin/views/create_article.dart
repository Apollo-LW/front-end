import 'package:Apollo/pages/Courses/models/article.dart';
import 'package:Apollo/pages/Courses/models/chapter.dart';
import 'package:Apollo/pages/Courses/models/link.dart';
import 'package:Apollo/pages/Courses/models/resource.dart';
import 'package:Apollo/theme/AppColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateArticle extends StatefulWidget {
  Chapter chapter;
  final bool isEditPage;
  final int articleIndex; //article index to edit
  CreateArticle({
    @required this.chapter,
    this.isEditPage = false,
    this.articleIndex,
  });

  @override
  _CreateArticleState createState() => _CreateArticleState();
}

class _CreateArticleState extends State<CreateArticle> {
  TextEditingController titleTextEditingController = TextEditingController();

  TextEditingController articleTextEditingController = TextEditingController();

  List<ResourceTextField> resourceTextFields = [];

  List<Resource> resources = [];

  List<Resource> getResources() {
    List<Resource> resources = List();

    resourceTextFields.forEach((element) {
      if (element.resourceLinkController.text != "")
        resources.add(Resource(
            itemType: "link",
            link: Link(
                title: element.resourceTitleController.text == ""
                    ? element.resourceLinkController.text
                    : element.resourceTitleController.text,
                url: element.resourceLinkController.text)));
    });
    return resources;
  }

  getInitialEditPageData() {
    if (widget.isEditPage) {
      articleTextEditingController.text =
          widget.chapter.items[widget.articleIndex].text;
      titleTextEditingController.text =
          widget.chapter.items[widget.articleIndex].title;

      widget.chapter.items[widget.articleIndex].resources.forEach((element) {
        resourceTextFields.add(ResourceTextField());
      });

      if (widget.chapter.items[widget.articleIndex].resources.length > 0) {
        for (int i = 0; i < resourceTextFields.length; i++) {
          resourceTextFields[i].resourceLinkController.text =
              widget.chapter.items[widget.articleIndex].resources[i].link.url;
          resourceTextFields[i].resourceTitleController.text =
              widget.chapter.items[widget.articleIndex].resources[i].link.title;
        }
      }
    } else {
      resourceTextFields.add(ResourceTextField());
    }
  }

  onPressContinue() {
    if (widget.isEditPage) {
      setState(() {
        widget.chapter.items[widget.articleIndex].text =
            titleTextEditingController.text;
        widget.chapter.items[widget.articleIndex].title =
            titleTextEditingController.text;
        widget.chapter.items[widget.articleIndex].resources = getResources();
      });

      Navigator.pop(context);
    } else {
      widget.chapter.items.add(Article(
        title: titleTextEditingController.text,
        text: articleTextEditingController.text,
        resources: getResources(),
      ));
      int count = 0;
      Navigator.of(context).popUntil((_) => count++ >= 2);
    }
  }

  @override
  void initState() {
    getInitialEditPageData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.chapter.items == null) widget.chapter.items = [];
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.isEditPage ? "تحرير المقال" : "اضافة مقالة"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: "عنوان المقالة",
                  border: OutlineInputBorder(),
                ),
                controller: titleTextEditingController,
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                minLines: 15,
                maxLines: 20,
                decoration: InputDecoration(
                  hintText: "المقالة",
                  border: OutlineInputBorder(),
                ),
                controller: articleTextEditingController,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "المصادر",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 8,
              ),
              ListView.builder(
                itemBuilder: (context, index) {
                  return resourceTextFields[index];
                },
                itemCount: resourceTextFields.length,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
              ),
              SizedBox(
                height: 8,
              ),
              InkWell(
                onTap: addResource,
                child: Row(
                  children: [
                    Icon(
                      Icons.add,
                      color: AppColors.neutrals[700],
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "أضف المزيد من المصادر",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                width: double.infinity,
                child: RaisedButton(
                  textColor: Colors.white,
                  color: AppColors.neutrals[700],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  onPressed: onPressContinue,
                  child: Text(widget.isEditPage ? "تحرير" : "إنشاء"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  addResource() {
    setState(() {
      resourceTextFields.add(ResourceTextField());
    });
  }
}

class ResourceTextField extends StatelessWidget {
  TextEditingController resourceTitleController = TextEditingController();
  TextEditingController resourceLinkController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 3 - 30,
            child: TextField(
              decoration: InputDecoration(
                  hintText: "عنوان المصدر", border: OutlineInputBorder()),
              controller: resourceTitleController,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * (2 / 3) - 30,
            child: TextField(
              decoration: InputDecoration(
                  hintText: " مثلا:https://en.wikipedia.org/wiki/Resource",
                  border: OutlineInputBorder()),
              controller: resourceLinkController,
            ),
          ),
        ],
      ),
    );
  }
}
