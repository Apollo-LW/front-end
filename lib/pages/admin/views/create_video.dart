import 'package:Apollo/pages/Courses/models/article.dart';
import 'package:Apollo/pages/Courses/models/Chapter.dart';
import 'package:Apollo/pages/Courses/models/link.dart';
import 'package:Apollo/pages/Courses/models/resource.dart';
import 'package:Apollo/pages/Courses/models/video.dart';
import 'package:Apollo/theme/AppColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateVideo extends StatefulWidget {
  Chapter chapter;
  final bool isEditPage;
  final int videoIndex; //article index to edit
  CreateVideo(
      {@required this.chapter, this.isEditPage = false, this.videoIndex});

  @override
  _CreateVideoState createState() => _CreateVideoState();
}

class _CreateVideoState extends State<CreateVideo> {
  TextEditingController titleTextEditingController = TextEditingController();

  TextEditingController captionTextEditingController = TextEditingController();
  TextEditingController urlTextEditingController = TextEditingController();

  List<ResourceTextField> resourceTextFields = [];

  getInitialEditPageData() {
    if (widget.isEditPage) {
      captionTextEditingController.text =
          widget.chapter.items[widget.videoIndex].caption;
      titleTextEditingController.text =
          widget.chapter.items[widget.videoIndex].title;
      urlTextEditingController.text =
          widget.chapter.items[widget.videoIndex].url;

      widget.chapter.items[widget.videoIndex].resources.forEach((element) {
        resourceTextFields.add(ResourceTextField());
      });

      if (widget.chapter.items[widget.videoIndex].resources.length > 0) {
        for (int i = 0; i < resourceTextFields.length; i++) {
          resourceTextFields[i].resourceLinkController.text =
              widget.chapter.items[widget.videoIndex].resources[i].link.url;
          resourceTextFields[i].resourceTitleController.text =
              widget.chapter.items[widget.videoIndex].resources[i].link.title;
        }
      }
    } else {
      resourceTextFields.add(ResourceTextField());
    }
  }

  onPressContinue() {
    if (widget.isEditPage) {
      setState(() {
        widget.chapter.items[widget.videoIndex].caption =
            titleTextEditingController.text;
        widget.chapter.items[widget.videoIndex].title =
            titleTextEditingController.text;
        widget.chapter.items[widget.videoIndex].resources = getResources();
      });

      Navigator.pop(context);
    } else {
      widget.chapter.items.add(Video(
        title: titleTextEditingController.text,
        caption: captionTextEditingController.text,
        url: urlTextEditingController.text,
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
        title: Text(widget.isEditPage ? "تحرير الفيديو" : "اضافة فيديو"),
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
                    labelText: "عنوان الفيديو", border: OutlineInputBorder()),
                controller: titleTextEditingController,
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: "الرابط, مثلا: https://cpgovappaward.jo/ar",
                    border: OutlineInputBorder()),
                controller: urlTextEditingController,
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                minLines: 10,
                maxLines: 20,
                decoration: InputDecoration(
                  hintText: "وصف",
                  border: OutlineInputBorder(),
                ),
                controller: captionTextEditingController,
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
                  child: Text("إنشاء"),
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
