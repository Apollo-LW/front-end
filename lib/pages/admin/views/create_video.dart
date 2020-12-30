import 'package:Apollo/pages/Courses/models/article.dart';
import 'package:Apollo/pages/Courses/models/chapter.dart';
import 'package:Apollo/pages/Courses/models/link.dart';
import 'package:Apollo/pages/Courses/models/resource.dart';
import 'package:Apollo/pages/Courses/models/video.dart';
import 'package:Apollo/theme/AppColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateVideo extends StatefulWidget {
  Chapter chapter;
  CreateVideo({@required this.chapter});

  @override
  _CreateVideoState createState() => _CreateVideoState();
}

class _CreateVideoState extends State<CreateVideo> {
  TextEditingController titleTextEditingController = TextEditingController();

  TextEditingController captionTextEditingController = TextEditingController();
  TextEditingController urlTextEditingController = TextEditingController();

  List<ResourceTextField> resourceTextFields = [ResourceTextField()];

  @override
  Widget build(BuildContext context) {
    if (widget.chapter.items == null) widget.chapter.items = [];
    return Scaffold(
      appBar: AppBar(
        title: Text("اضافة فيديو"),
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
                  onPressed: () {
                    widget.chapter.items.add(Video(
                        url: urlTextEditingController.text,
                        title: titleTextEditingController.text,
                        caption: captionTextEditingController.text,
                        resources: getResources(),
                        itemNumber: (widget.chapter.items.length + 1)));
                    int count = 0;
                    Navigator.of(context).popUntil((_) => count++ >= 2);
                  },
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
