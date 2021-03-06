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
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class Institution extends StatefulWidget {
  @override
  _InstitutionState createState() => _InstitutionState();
}

class _InstitutionState extends State<Institution> {
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
    //todo:9=====================
    //1-fetch list of courses to display
    //courses= fetchedCourses
    //2-sort them based on insitution so bseer we have a list that has lists which contain courses
    //listCourses= lists of courses based on institution
    //======================
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leadingWidth: 35,
        title: FittedBox(
          child: Row(
            children: [
              CircleAvatar(),
              SizedBox(
                width: 10,
              ),
              Text("Princess Sumaya Universty for Technology")
            ],
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return CourseList(
            title: "Recent",
            courses: listCourses[index],
          );
        },
        itemCount: listCourses.length,
      ),
      floatingActionButton: InstitutionFAB(),
      // drawer: NavDrawer(),
    );
  }
}

class InstitutionFAB extends StatelessWidget {
  const InstitutionFAB({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (true) {
      return FloatingActionButton(
        // backgroundColor:,
        elevation: 0,
        child: SpeedDial(
          marginRight: 10,
          // marginRight: 3,

          // overlayColor: Colors.white,
          overlayOpacity: .4,

          // elevation: 5,
          tooltip: "edit",
          // backgroundColor: Colors.amber,
          animatedIcon: AnimatedIcons.menu_close,
          animatedIconTheme: IconThemeData(size: 22.0),
          // child: Icon(Icons.add),
          onOpen: () => print('OPENING DIAL'),
          onClose: () => print('DIAL CLOSED'),
          visible: true,
          curve: Curves.bounceIn,
          children: [
            SpeedDialChild(
              child: Icon(Icons.edit, color: Colors.white),
              backgroundColor: Colors.lightBlue[800],
              onTap: () {},
            ),
            SpeedDialChild(
              child: Icon(Icons.reorder, color: Colors.white),
              backgroundColor: Colors.lightBlue[800],
              onTap: () {},
            ),
            SpeedDialChild(
              child: Icon(Icons.add, color: Colors.white),
              backgroundColor: Colors.lightBlue[800],
              onTap: () {},
            ),
          ],
        ),
      );
    } else {
      return Container();
    }
  }
}
