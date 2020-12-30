<<<<<<< HEAD
import 'dart:math';

import 'package:Apollo/pages/Courses/Course.dart';
import 'package:Apollo/pages/admin/components/course_partner_text_field.dart';
import 'package:Apollo/pages/admin/components/icon_card.dart';
import 'package:Apollo/pages/admin/components/not_institution_card.dart';
import 'package:Apollo/theme/AppColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Step4 extends StatefulWidget {
  final String title;
  final String category;
  final String description;

  const Step4(
      {@required this.title,
      @required this.category,
      @required this.description});
  @override
  _Step4State createState() => _Step4State();
}

class _Step4State extends State<Step4> {
  bool partnershipCardIsChosen = false;
  bool soloCardIsChosen = false;
  ScrollController listViewController = ScrollController();
  List<CoursePartnerTextField> coursePartnerTextFields = [
    CoursePartnerTextField(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            child: Text(
              "إنهاء",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("إنشاء دورة جديدة"),
          ],
        ),
        leading: Container(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Transform.rotate(
              angle: pi,
              child: FAProgressBar(
                currentValue: 4,
                maxValue: 4,
                direction: Axis.horizontal,
                verticalDirection: VerticalDirection.up,
                backgroundColor: Colors.grey.withOpacity(0.3),
                borderRadius: 20,
                displayText: '',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 8),
              child: Text(
                "خطوة 4 من 4",
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
                child: Text("هل هذه الدورة بشراكة مع شخص آخر؟",
                    style: TextStyle(fontSize: 24))),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      partnershipCardIsChosen = true;
                      soloCardIsChosen = false;
                    });
                  },
                  child: IconCard(
                    isChosen: partnershipCardIsChosen,
                    icon: Icons.people,
                    title: "نعم, انها بشراكة مع شخص آخر.",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      partnershipCardIsChosen = false;
                      soloCardIsChosen = true;
                    });
                  },
                  child: NotInstitutionCard(
                    isChosen: soloCardIsChosen,
                    title: "لا, انها ليست بشراكة مع شخص آخر",
                  ),
                ),
              ],
            ),
            Spacer(),
            Center(
              child: Container(
                width: double.infinity,
                child: RaisedButton(
                  textColor: Colors.white,
                  color: AppColors.neutrals[700].withOpacity(0.8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  onPressed: onPressNext,
                  child: Text(
                    "إنشاء الدورة",
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void onPressNext() {
    if (partnershipCardIsChosen) {
      buildDialog();
    }
  }

  buildDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              insetPadding: EdgeInsets.symmetric(horizontal: 20),
              title: Center(child: Text("أدخل اسم الشريك")),
              content: Container(
                width: MediaQuery.of(context).size.width,
                height: 200.0 + (coursePartnerTextFields.length * 25.0),
                child: ListView(
                  controller: listViewController,
                  children: <Widget>[
                    Container(
                        height:
                            (70 * coursePartnerTextFields.length).toDouble(),
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: ClampingScrollPhysics(),
                          itemCount: coursePartnerTextFields.length,
                          itemBuilder: (context, index) {
                            return coursePartnerTextFields[index];
                          },
                        )),
                    InkWell(
                      onTap: () {
                        setState(() {
                          coursePartnerTextFields.add(CoursePartnerTextField());
                          listViewController.animateTo(
                            listViewController.position.maxScrollExtent,
                            duration: Duration(milliseconds: 1),
                            curve: Curves.fastOutSlowIn,
                          );
                        });
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.add,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "أضف المزيد من الشركاء",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    DialogButton(
                      child: Text(
                        "إلغاء",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      onPressed: () => Navigator.pop(context),
                    )
                  ],
                ),
              ),
              actions: <Widget>[],
            );
          },
        );
      },
    );
  }
}
=======
// import 'dart:math';
//
// import 'package:Apollo/pages/Courses/Course.dart';
// import 'package:Apollo/pages/Courses/models/course.dart';
// import 'package:Apollo/pages/admin/components/course_partner_text_field.dart';
// import 'package:Apollo/pages/admin/components/icon_card.dart';
// import 'package:Apollo/pages/admin/components/not_institution_card.dart';
// import 'package:Apollo/pages/admin/views/teacher_course_view.dart';
// import 'package:Apollo/theme/AppColors.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/painting.dart';
// import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
// import 'package:rflutter_alert/rflutter_alert.dart';
// import 'package:uuid/uuid.dart';
//
// class Step4 extends StatefulWidget {
//   final String title;
//   final String category;
//   final String description;
//
//   const Step4(
//       {@required this.title,
//       @required this.category,
//       @required this.description});
//   @override
//   _Step4State createState() => _Step4State();
// }
//
// class _Step4State extends State<Step4> {
//   bool partnershipCardIsChosen = false;
//   bool soloCardIsChosen = false;
//   ScrollController listViewController = ScrollController();
//   List<CoursePartnerTextField> coursePartnerTextFields = [
//     CoursePartnerTextField(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         actions: [
//           TextButton(
//             child: Text(
//               "إنهاء",
//               style: TextStyle(color: Colors.white),
//             ),
//             onPressed: () {
//               Navigator.pop(context);
//             },
//           )
//         ],
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text("إنشاء دورة جديدة"),
//           ],
//         ),
//         leading: Container(),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(24.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Transform.rotate(
//               angle: pi,
//               child: FAProgressBar(
//                 currentValue: 4,
//                 maxValue: 4,
//                 direction: Axis.horizontal,
//                 verticalDirection: VerticalDirection.up,
//                 backgroundColor: Colors.grey.withOpacity(0.3),
//                 borderRadius: 20,
//                 displayText: '',
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 8.0, left: 8),
//               child: Text(
//                 "خطوة 4 من 4",
//                 style: TextStyle(fontSize: 16),
//               ),
//             ),
//             SizedBox(
//               height: 50,
//             ),
//             Center(
//                 child: Text("هل هذه الدورة بشراكة مع شخص آخر؟",
//                     style: TextStyle(fontSize: 24))),
//             SizedBox(
//               height: 20,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       partnershipCardIsChosen = true;
//                       soloCardIsChosen = false;
//                     });
//                   },
//                   child: IconCard(
//                     isChosen: partnershipCardIsChosen,
//                     icon: Icons.people,
//                     title: "نعم, انها بشراكة مع شخص آخر.",
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       partnershipCardIsChosen = false;
//                       soloCardIsChosen = true;
//                     });
//                   },
//                   child: NotInstitutionCard(
//                     isChosen: soloCardIsChosen,
//                     title: "لا, انها ليست بشراكة مع شخص آخر",
//                   ),
//                 ),
//               ],
//             ),
//             Spacer(),
//             Center(
//               child: Container(
//                 width: double.infinity,
//                 child: RaisedButton(
//                   textColor: Colors.white,
//                   color: AppColors.neutrals[700].withOpacity(0.8),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                   onPressed: onPressCreateCourse1,
//                   child: Text(
//                     "إنشاء الدورة",
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
//
//   void onPressCreateCourse1() {
//     if (partnershipCardIsChosen) {
//       buildDialog();
//     } else {
//       Course course =
//           creationOfCourse(["logged in username"]); //create a course object
//
//       Navigator.pushReplacement(context, MaterialPageRoute(
//         builder: (context) {
//           return TeacherCourseView(
//             course: course,
//           );
//         },
//       ));
//     }
//   }
//
//   Course creationOfCourse(instrutors) {
//     var uuid = Uuid().v4;
//     Course course = Course(
//         title: widget.title,
//         description: widget.description,
//         category: widget.category,
//         instructors: ["logged in username"],
//         courseId: uuid.toString());
//     return course;
//   }
//
//   void onPressCreateCourse2() {
//     //fetch the list of instructors that the user entered
//     List<String> instructors = new List();
//     instructors.add("logged in username");
//     coursePartnerTextFields.forEach((widget) {
//       if (widget.textEditingController.text != "")
//         instructors.add(widget.textEditingController.text);
//     });
//     Course course = creationOfCourse(instructors); //create a course object
//     Navigator.pushReplacement(context, MaterialPageRoute(
//       builder: (context) {
//         return TeacherCourseView(course: course);
//       },
//     ));
//   }
//
//   buildDialog() {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return StatefulBuilder(
//           builder: (context, setState) {
//             return AlertDialog(
//               insetPadding: EdgeInsets.symmetric(horizontal: 20),
//               title: Center(child: Text("أدخل اسم الشريك")),
//               content: Container(
//                 width: MediaQuery.of(context).size.width,
//                 height: 200.0 + (coursePartnerTextFields.length * 25.0),
//                 child: ListView(
//                   controller: listViewController,
//                   children: <Widget>[
//                     Container(
//                         height:
//                             (70 * coursePartnerTextFields.length).toDouble(),
//                         child: ListView.builder(
//                           shrinkWrap: true,
//                           physics: ClampingScrollPhysics(),
//                           itemCount: coursePartnerTextFields.length,
//                           itemBuilder: (context, index) {
//                             return coursePartnerTextFields[index];
//                           },
//                         )),
//                     SizedBox(
//                       height: 40,
//                     ),
//                     InkWell(
//                       onTap: () {
//                         setState(() {
//                           coursePartnerTextFields.add(CoursePartnerTextField());
//                           listViewController.animateTo(
//                             listViewController.position.maxScrollExtent,
//                             duration: Duration(milliseconds: 1),
//                             curve: Curves.fastOutSlowIn,
//                           );
//                         });
//                       },
//                       child: Row(
//                         children: [
//                           Icon(
//                             Icons.add,
//                           ),
//                           SizedBox(
//                             width: 8,
//                           ),
//                           Text(
//                             "أضف المزيد من الشركاء",
//                             style: TextStyle(fontSize: 16),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         DialogButton(
//                             width: MediaQuery.of(context).size.width / 3,
//                             color: Colors.grey.shade500,
//                             child: Text(
//                               "إنشاء الدورة",
//                               style:
//                                   TextStyle(color: Colors.white, fontSize: 20),
//                             ),
//                             onPressed: () => onPressCreateCourse2()),
//                         DialogButton(
//                             width: MediaQuery.of(context).size.width / 3,
//                             child: Text(
//                               "إلغاء",
//                               style:
//                                   TextStyle(color: Colors.white, fontSize: 20),
//                             ),
//                             onPressed: () => Navigator.pop(context)),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//               actions: <Widget>[],
//             );
//           },
//         );
//       },
//     );
//   }
// }
>>>>>>> d1338acb51a84032b01436c185e9dd24554575d1
