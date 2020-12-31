import 'package:Apollo/components/navdrawer.dart';
import 'package:Apollo/data/course_related_data.dart';
import 'package:Apollo/pages/Courses/models/CourseResponse.dart';
import 'package:Apollo/pages/Courses/views/classes.dart';
import 'package:Apollo/theme/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:Apollo/pages/home/home_components.dart';
import 'package:Apollo/pages/Courses/Course.dart';
import 'package:Apollo/pages/Courses/resources.dart';
import 'package:Apollo/pages/Courses/courseList.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CourseResponse> courses = [];
  List<List<CourseResponse>> listCourses = [
    [
      CourseResponse(
          courseName: "Asdf",
          courseId: "asdf",
          category: "sdf",
          description:
              "علي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم . من المفترض أن نفرق بين هذه الحالات بكل سهولة ومرونة. في ذاك الوقت عندما تكون قدرتنا علي الاختيار غير مقيدة بشرط وعندما لا نجد ما يمنعنا أن نفعل الأفضل فها نحن نرحب بالسرور والسعادة ونتجنب كل ما يبعث إلينا الألم. في بعض الأحيان ونظراً للالتزامات التي يفرضها علينا الواجب والعمل سنتنازل غالباً ونرفض الشعور بالسرور ونقبل ما يجلبه إلينا الأسى. الإنسان الحكيم عليه أن يمسك زمام الأمور ويختار إما أن يرفض مصادر السعادة من أجل ما هو أكثر أهمية أو يتحمل الألم من أجل ألا يتحمل ما هو أسوأ. </p>",
          courseChapters: [Data.chapter1]),
      CourseResponse(
          courseName: "Asdf",
          courseId: "asdf",
          category: "sdf",
          description: "Asdf adsf",
          courseChapters: [Data.chapter1])
    ]
  ];

  @override
  void initState() {
    //todo:6=====================
    //1-fetch list of courses to display
    //courses= fetchedCourses
    //2-sort them into categories so bseer we have a list that has lists which contain courses
    //listCourses= lists of courses based on category
    //======================
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "أبولو",
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ListView.builder(
          // margin: EdgeInsets.symmetric(vertical: 20.0),
          // height: 300.0,
          // decoration: BoxDecoration(
          // color:Colors.amberAccent,
          // ),
          itemBuilder: (context, index) {
            return CourseList(
              courses: listCourses[index],
            );
          },
          itemCount: listCourses.length,
        ),
      ),
      drawer: NavDrawer(),
    );
  }
}
