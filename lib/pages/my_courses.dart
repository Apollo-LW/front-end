import 'package:Apollo/data/course_related_data.dart';
import 'package:Apollo/pages/Courses/views/classes.dart';
import 'package:Apollo/pages/admin/views/teacher_course_view.dart';
import 'package:Apollo/pages/home/home_components.dart';
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

import 'Courses/Course.dart';

class MyCourses extends StatefulWidget {
  @override
  _MyCoursesState createState() => _MyCoursesState();
}

class _MyCoursesState extends State<MyCourses> {
  List courses = [Data.course1];
  @override
  void initState() {
    // TODO:
    //fetch all of  the courses i teach
    // courses = [];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("كورساتي"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: ListView.builder(
            itemCount: courses.length,
            itemBuilder: (context, index) {
              return OpenContainer(
                closedElevation: 0,
                openElevation: 0,
                closedColor: Colors.transparent,
                transitionType: ContainerTransitionType.fade,
                transitionDuration: const Duration(milliseconds: 500),
                openBuilder: (context, action) {
                  return TeacherCourseView(
                    course: courses[index],
                  );
                },
                closedBuilder: (context, action) {
                  return CourseCard(
                    course: courses[index],
                    isTeacher: true,
                  );
                },
              );
            },
          ),
        ));
  }
}
