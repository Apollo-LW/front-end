import 'package:Apollo/components/navdrawer.dart';
import 'package:Apollo/pages/Courses/models/CourseResponse.dart';
import 'package:Apollo/pages/Courses/resources.dart';
import 'package:Apollo/pages/Courses/views/classes.dart';
import 'package:Apollo/pages/chat/chat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class CourseView extends StatelessWidget {
  final CourseResponse course;

  const CourseView({this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        initialIndex: 1,
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              SliverAppBar(
                toolbarHeight: 60,
                expandedHeight: 50,
//  collapsedHeight: 30.0001,

//                        pinned:true,
                title: Text(course.courseName),
                automaticallyImplyLeading: true,
                bottom: TabBar(
                  tabs: [
                    Container(
                      child: Tab(
                        icon: Icon(
                          Icons.chat,
                          size: 20,
                        ),
                        // text: "Messages"
                      ),
                      height: 30,
                    ),
                    Container(
                      child: Tab(
                        icon: Icon(
                          Icons.school,
                          size: 20,
                        ),
                        // text: "Classes"
                      ),
                      height: 30,
                    ),
                    Container(
                      child: Tab(
                        icon: Icon(
                          Icons.file_copy,
                          size: 20,
                        ),
                        // text: "Resources"
                      ),
                      height: 30,
                    ),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              Center(child: Chat()),
              Center(
                child: Scaffold(
                  body: Classes(
                    chapters: course.courseChapters,
                  ),
                ),
              ),
              Center(
                child: Scaffold(
                  body: Resources(),
                ),
              )
            ],
          ),
        ),
      ),

      // drawer: NavDrawer(),
    );
  }
}

class ClassesFAB extends StatelessWidget {
  const ClassesFAB({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (true) {
      return FloatingActionButton(
        // backgroundColor:,
        elevation: 0,
        // mini: true,
        child: SpeedDial(
          marginRight: 10,
          // marginBottom: 3,
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

class ResourcesFAB extends StatelessWidget {
  const ResourcesFAB({
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
