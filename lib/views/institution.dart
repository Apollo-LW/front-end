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
    [Data.course1, Data.course8],
    [Data.course3, Data.course4]
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
            courses: listCourses[index],
          );
        },
        itemCount: listCourses.length,
      ),

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
