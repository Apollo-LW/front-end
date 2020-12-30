import 'dart:math';

<<<<<<< HEAD
=======
import 'package:Apollo/pages/Courses/models/Chapter.dart';
import 'package:Apollo/pages/Courses/models/CourseResponse.dart';
import 'package:Apollo/pages/Courses/models/article.dart';
import 'package:Apollo/pages/Courses/models/quiz.dart';
>>>>>>> d1338acb51a84032b01436c185e9dd24554575d1
import 'package:Apollo/pages/admin/components/icon_card.dart';
import 'package:Apollo/pages/admin/components/not_institution_card.dart';
import 'package:Apollo/pages/admin/onboarding/step_2.dart';
import 'package:Apollo/pages/admin/onboarding/step_4.dart';
<<<<<<< HEAD
=======
import 'package:Apollo/pages/admin/views/teacher_course_view.dart';
>>>>>>> d1338acb51a84032b01436c185e9dd24554575d1
import 'package:Apollo/theme/AppColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
<<<<<<< HEAD
=======
import 'package:uuid/uuid.dart';
>>>>>>> d1338acb51a84032b01436c185e9dd24554575d1

class Step3 extends StatefulWidget {
  final String title;
  final String category;

  const Step3({this.title, this.category});
  @override
  _Step3State createState() => _Step3State();
}

class _Step3State extends State<Step3> {
  TextEditingController textEditingController = TextEditingController();

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
        child: ListView(
          children: [
            Transform.rotate(
              angle: pi,
              child: FAProgressBar(
                currentValue: 3,
<<<<<<< HEAD
                maxValue: 4,
=======
                maxValue: 3,
>>>>>>> d1338acb51a84032b01436c185e9dd24554575d1
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
<<<<<<< HEAD
                "خطوة 3 من 4",
=======
                "خطوة 3 من 3",
>>>>>>> d1338acb51a84032b01436c185e9dd24554575d1
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Text("هل تريد إدخال وصف للدورة؟",
                        style: TextStyle(fontSize: 24))),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText:
                          "مثلا: علي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم . من المفترض أن نفرق بين هذه الحالات بكل سهولة ومرونة. في ذاك الوقت عندما تكون قدرتنا علي الاختيار غير مقيدة بشرط وعندما لا نجد ما يمنعنا أن نفعل الأفضل فها نحن نرحب بالسرور والسعادة ونتجنب كل ما يبعث إلينا الألم. في بعض الأحيان ونظراً للالتزامات التي يفرضها علينلشعور بالسرختار إما أن ير>",
                      border: OutlineInputBorder()),
                  maxLines: 100,
                  minLines: 15,
                  controller: textEditingController,
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                width: double.infinity,
                child: RaisedButton(
                  textColor: Colors.white,
                  color: AppColors.neutrals[700].withOpacity(0.8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) {
<<<<<<< HEAD
                        return Step4(
                          title: widget.title,
                          category: widget.category,
                          description: textEditingController.text,
=======
                        return TeacherCourseView(
                          course: creationOfCourse(),
>>>>>>> d1338acb51a84032b01436c185e9dd24554575d1
                        );
                      },
                    ));
                  },
                  child: Text("التالي"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
<<<<<<< HEAD
=======

  CourseResponse creationOfCourse() {
    var uuid = Uuid().v4;
    CourseResponse course = CourseResponse(
        courseName: widget.title,
        description: textEditingController.text,
        category: widget.category,
        courseOwners: ["logged in username"],
        isPublic: false,
        isActive: false,
        courseChapters: [
          Chapter(
              chapterName: "ds",
              items: [Article(title: "بسيو يس", text: "fsdf", resources: [])])
        ],
        courseId: uuid.toString());
    return course;
  }
>>>>>>> d1338acb51a84032b01436c185e9dd24554575d1
}
