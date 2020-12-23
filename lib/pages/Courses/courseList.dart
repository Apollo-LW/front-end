import 'package:flutter/material.dart';
import 'package:Apollo/pages/home/home_components.dart';

class CourseList extends StatelessWidget {
  String title;
  CourseList({
    this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Row(
          children: [
            SizedBox(width: 40),
            Text(
              title,
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
          child: ListView(
            // clipBehavior: ,
            // scrollDirection: ,
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              SizedBox(width: 30),
              CourseCard(),
              CourseCard(),
              CourseCard(),
              CourseCard(),
              SizedBox(width: 30),
            ],
          ),
        ),
      ],
    );
  }
}
