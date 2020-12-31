import 'package:Apollo/pages/Courses/Course.dart';
import 'package:Apollo/pages/Courses/models/CourseResponse.dart';
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:Apollo/pages/home/home_components.dart';

class CourseList extends StatelessWidget {
  final List<CourseResponse> courses;
  String title;
  CourseList({@required this.courses, this.title});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 20),
        Row(
          children: [
            SizedBox(width: 40),
            Text(
              title ?? courses[0].category,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
          ],
        ),
        Container(
          width: 500,
          height: 230,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: ListView.builder(
              // clipBehavior: ,
              // scrollDirection: ,
              scrollDirection: Axis.horizontal,
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              itemCount: courses.length,
              itemBuilder: (context, index) {
                return OpenContainer(
                  closedElevation: 0,
                  closedColor: Colors.transparent,
                  transitionType: ContainerTransitionType.fadeThrough,
                  transitionDuration: const Duration(milliseconds: 700),
                  openBuilder: (context, action) {
                    return CourseView(
                      course: courses[index],
                    );
                  },
                  closedBuilder: (context, action) {
                    return CourseCard(course: courses[index]);
                  },
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
