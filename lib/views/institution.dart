import 'package:Apollo/components/navdrawer.dart';
import 'package:Apollo/pages/Courses/courseList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Institution extends StatelessWidget {
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
      body: ListView(
        children: [
          ListTile(
            title: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sed porttitor turpis. Donec ornare dui lacus, vitae iaculis dolor ultrices nec. Sed ipsum ipsum, dapibus non gravida sed, aliquam quis eros. Cras eleifend eros consequat ultrices imperdiet. Nulla facilisi. Integer ac quam et leo dictum vehicula vitae sed dui. Etiam mollis turpis quis nibh hendrerit"),
          ),
          CourseList(title: "Recent"),
          CourseList(title: "PSUT"),
          CourseList(title: "HTU - PSUT"),
          CourseList(title: "Work"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        // backgroundColor: Color.red,
        child: Text("course"),
      ),
      endDrawer: NavDrawer(),
    );
  }
}
