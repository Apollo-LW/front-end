import 'package:Apollo/components/AppDropDown.dart';
import 'package:Apollo/components/app_text_field.dart';
import 'package:Apollo/data/category_info.dart';
import 'package:Apollo/helper/form_validator.dart';
import 'package:Apollo/pages/Courses/models/CourseResponse.dart';
import 'package:Apollo/pages/Courses/models/article.dart';
import 'package:Apollo/pages/Courses/models/Chapter.dart';
import 'package:Apollo/pages/Courses/models/link.dart';
import 'package:Apollo/pages/Courses/models/resource.dart';
import 'package:Apollo/pages/admin/components/course_partner_text_field.dart';
import 'package:Apollo/theme/AppColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  final CourseResponse course;
  final String courseID;
  final Function changeTabsLength;

  const Settings({this.course, this.courseID, this.changeTabsLength});

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  String selectedCategory = CategoryInfo.categories[0];
  CourseResponse course = CourseResponse();
  TextEditingController titleTextEditingController = TextEditingController();
  TextEditingController descriptionTextEditingController =
      TextEditingController();
  TextEditingController imageTextEditingController = TextEditingController();
  bool isPublic = false;
  bool isActive = false;
  String category = "";
  final _formKey = GlobalKey<FormState>();
  List<String> categories = [];

  List<AppTextField> coursePartnerTextFields = [
    AppTextField(
      label: "إضافة شريك للدورة",
      prefixIcon: Icon(Icons.people),
    ),
  ];
  @override
  void initState() {
    //todo:1(part1)
    //fetch course by widget.id
    //for ex. course= await fetchCourseById()
    //replace all "widget.course" with course
    titleTextEditingController.text = widget.course.courseName;
    imageTextEditingController.text = widget.course.imgUrl;
    descriptionTextEditingController.text = widget.course.description;
    isPublic = widget.course.isPublic;
    isActive = widget.course.isActive;
    category = widget.course.category;

    categories = CategoryInfo.categories;

    if (CategoryInfo.categories.length == 6) categories.removeAt(0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Form(
              child: Column(
                children: [
                  AppTextField(
                    label: "عنوان الدورة",
                    prefixIcon: Icon(Icons.school),
                    validator: FormValidators.presenceValidator,
                    controller: titleTextEditingController,
                  ),
                ],
              ),
              key: _formKey,
            ),

            AppDropdown<String>(
              placeholder: "Meditation level",
              value: category,
              options: categories,
              onChanged: (String val) {
                setState(() {
                  category = val;
                });
              },
            ),
            AppTextField(
              label: "صورة الدورة",
              prefixIcon: Icon(Icons.image),
              controller: imageTextEditingController,
            ),
            ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: coursePartnerTextFields.length,
              itemBuilder: (context, index) {
                return coursePartnerTextFields[index];
              },
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 11),
              child: InkWell(
                onTap: () {
                  setState(() {
                    int count = coursePartnerTextFields.length + 1;
                    coursePartnerTextFields.add(AppTextField(
                        label: " شريك رقم " + count.toString(),
                        prefixIcon: Icon(Icons.people)));
                  });
                },
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
                      "أضف المزيد من الشركاء",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 16,
            ),
            TextField(
              minLines: 15,
              maxLines: 20,
              decoration: InputDecoration(
                hintText: "وصف الدورة",
                border: OutlineInputBorder(),
              ),
              controller: descriptionTextEditingController,
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.publish,
                        color: Colors.grey.shade600,
                        size: 25,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        "نشر الدورة",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Switch(
                  value: isActive,
                  onChanged: (bool value) {
                    setState(() {
                      isActive = value;
                    });
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.public,
                        color: Colors.grey.shade600,
                        size: 23,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        "اتاحة الدورة للعامة",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Switch(
                  value: isPublic,
                  onChanged: (bool value) {
                    setState(() {
                      isPublic = value;
                    });
                  },
                )
              ],
            ),

            SizedBox(
              height: 8,
            ),
            // ListView.builder(
            //   itemBuilder: (context, index) {
            //     return resourceTextFields[index];
            //   },
            //   itemCount: resourceTextFields.length,
            //   shrinkWrap: true,
            //   physics: ClampingScrollPhysics(),
            // ),
            SizedBox(
              height: 8,
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
                onPressed: onSubmit,
                child: Text("تأكيد"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  getCoursePartners() {
    List<String> coursePartners = new List();
    coursePartnerTextFields.forEach((element) {
      if (element.partnerTextEditingController.text != "")
        coursePartners.add(element.partnerTextEditingController.text);
    });
  }

  onSubmit() {
    if (_formKey.currentState.validate()) {
      widget.course.courseName = titleTextEditingController.text;
      widget.course.description = descriptionTextEditingController.text;
      widget.course.category = category;
      widget.course.courseOwners = getCoursePartners();
      widget.course.imgUrl = imageTextEditingController.text;
      widget.course.isActive = isActive;
      widget.course.isPublic = isPublic;
      if (isPublic)
        widget.changeTabsLength(4);
      else
        widget.changeTabsLength(3);

      setState(() {});
      //Todo: 1(part2)
      // //update course info
      // values are:
      // titleTextEditingController.text; //course title
      // descriptionTextEditingController.text; //course description
      // category; //category
      // List<String> coursePartners = getCoursePartners(); //course partners
      //imgUrl: imageTextEditingController.text
      // isPublic;
      // isActive;
    }
    setState(() {});
  }
}
