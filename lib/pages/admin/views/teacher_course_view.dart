import 'package:Apollo/pages/Courses/models/Chapter.dart';
import 'package:Apollo/pages/Courses/models/CourseResponse.dart';
import 'package:Apollo/pages/admin/views/curriculum.dart';
import 'package:Apollo/pages/admin/views/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:Apollo/pages/chat/chat.dart';
import 'package:Apollo/pages/Courses/resources.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class TeacherCourseView extends StatefulWidget {
  final CourseResponse course;
  final String courseId;
  TeacherCourseView({@required this.course, this.courseId});

  @override
  _TeacherCourseViewState createState() => _TeacherCourseViewState();
}

class _TeacherCourseViewState extends State<TeacherCourseView>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  TextEditingController chapterTextEditingController = TextEditingController();
  CourseResponse course;
  @override
  void initState() {
    //todo: 3
    //fetch course info from widget.id and use it instead of widget.course in the code below
    //for ex. course= fetchCuorseFunction(widget.id)

    super.initState();
    _tabController = new TabController(length: buildTabs().length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _tabController.index == 0
          ? FloatingActionButton(
              child: Icon(Icons.add),
              tooltip: "إضافة وحدة جديدة",
              onPressed: () {
                buildDialog();
                //
                //
                // print(_tabController.index);
                // widget.course.chapters.add(Chapter(
                //   title: "asdf",
                // ));
                // setState(() {});
              })
          : null,
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            SliverAppBar(
              toolbarHeight: 60,
              expandedHeight: 50,
//  collapsedHeight: 30.0001,

//                        pinned:true,
              title: Text(widget.course.courseName),
              automaticallyImplyLeading: true,
              bottom: TabBar(
                controller: _tabController,
                tabs: buildTabs(),
                onTap: (index) {
                  setState(() {});
                },
              ),
            ),
          ];
        },
        body: TabBarView(
          children: buildTabBarView(),
          controller: _tabController,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<Center> buildTabBarView() {
    List<Center> tabs = [
      Center(
          child: Curriculum(
        course: widget.course,
      )),
      Center(
        child: Resources(),
      ),
      Center(
          child: Settings(
        course: widget.course,
      ))
    ];

    if (widget.course.isActive) {
      tabs.add(
        Center(child: Chat()),
      );
    }
    return tabs;
  }

  List<Container> buildTabs() {
    List<Container> tabs = [
      Container(
        child: Tab(
          child: Text("المنهاج"),

          // text: "Classes"
        ),
        height: 30,
      ),
      Container(
        child: Tab(
          child: Text("المصادر"),
          // text: "Resources"
        ),
        height: 30,
      ),
      Container(
        child: Tab(
          child: Text("الضبط"),
          // text: "Resources"
        ),
        height: 30,
      ),
    ];

    if (widget.course.isActive) {
      tabs.add(
        Container(
          child: Tab(
            child: Text("الرسائل"),
            // text: "Resources"
          ),
          height: 30,
        ),
      );
    }
    return tabs;
  }

  buildDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          insetPadding: EdgeInsets.symmetric(horizontal: 20),
          title: Center(child: Text("إنشاء وحدة جديدة")),
          content: Container(
            width: MediaQuery.of(context).size.width,
            height: 150.0,
            child: ListView(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      labelText: "اسم الوحدة", border: OutlineInputBorder()),
                  controller: chapterTextEditingController,
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DialogButton(
                        width: MediaQuery.of(context).size.width / 3,
                        color: Colors.grey.shade500,
                        child: Text(
                          "إنشاء الوحدة",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            //todo:4 add chapter to course
                            //where chapter is Chapter(chapterName: chapterTextEditingController.text)
                            //and course has the the id (widget.id)

                            //previous code=============
                            widget.course.courseChapters.add(Chapter(
                              chapterName: chapterTextEditingController.text,
                            ));
                            //=======================
                          });
                          Navigator.pop(context);
                        }),
                    DialogButton(
                        width: MediaQuery.of(context).size.width / 3,
                        child: Text(
                          "إلغاء",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onPressed: () => Navigator.pop(context)),
                  ],
                )
              ],
            ),
          ),
          actions: <Widget>[],
        );
      },
    );
  }
}
