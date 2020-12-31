import 'package:Apollo/pages/Courses/models/CourseResponse.dart';
import 'package:Apollo/pages/Courses/views/classes.dart';
import 'package:flutter/material.dart';
import 'package:Apollo/pages/home/home_components.dart';
import 'package:Apollo/pages/Courses/courseList.dart';
import 'package:Apollo/pages/browse/chipBuilder.dart';
import 'package:Apollo/components/navdrawer.dart';

class Browse extends StatefulWidget {
  @override
  _BrowseState createState() => _BrowseState();
}

class _BrowseState extends State<Browse> {
  final searchBarController = TextEditingController();

  List<CourseResponse> courses = [];

  List<List<CourseResponse>> listCourses = [
    [
      CourseResponse(
          courseName: "Asdf",
          courseId: "asdf",
          category: "sdf",
          description:
              "علي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم . من المفترض أن نفرق بين هذه الحالات بكل سهولة ومرونة. في ذاك الوقت عندما تكون قدرتنا علي الاختيار غير مقيدة بشرط وعندما لا نجد ما يمنعنا أن نفعل الأفضل فها نحن نرحب بالسرور والسعادة ونتجنب كل ما يبعث إلينا الألم. في بعض الأحيان ونظراً للالتزامات التي يفرضها علينا الواجب والعمل سنتنازل غالباً ونرفض الشعور بالسرور ونقبل ما يجلبه إلينا الأسى. الإنسان الحكيم عليه أن يمسك زمام الأمور ويختار إما أن يرفض مصادر السعادة من أجل ما هو أكثر أهمية أو يتحمل الألم من أجل ألا يتحمل ما هو أسوأ. </p>",
          courseChapters: [Classes.chapter1]),
      CourseResponse(
          courseName: "Asdf",
          courseId: "asdf",
          category: "sdf",
          description: "Asdf adsf",
          courseChapters: [Classes.chapter1])
    ]
  ];

  @override
  void initState() {
    //todo:7===================== //same as tod0:6
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
          backgroundColor: Colors.purple[900],
          title: Row(
            children: [
              Expanded(
                flex: 5,
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  cursorColor: Colors.white60,
                  controller: searchBarController,
                  decoration: const InputDecoration(
                    // border: Border(top: BorderSide(color: Colors.blueAccent))),

                    hintStyle: TextStyle(
                      color: Colors.white60,
                    ),
                    hintText: 'Search',
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: ClipOval(
                  child: Container(
                    width: 55,
                    height: 55,
                    child: FlatButton(
                      child: Icon(
                        Icons.search,
                        color: Colors.white60,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              )
            ],
          )),
      body: ListView(
        // margin: EdgeInsets.symmetric(vertical: 20.0),
        // height: 300.0,
        // decoration: BoxDecoration(
        // color:Colors.amberAccent,
        // ),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              children: [
                FChipBuilder(label: "Robotics"),
                FChipBuilder(label: "Physics"),
                FChipBuilder(label: "Problem solving"),
                FChipBuilder(label: "Robotics"),
              ],
            ),
          ),
          ListView.builder(
            physics: ClampingScrollPhysics(),
            shrinkWrap: true,
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
        ],
      ),
      drawer: NavDrawer(),
    );
  }
}
