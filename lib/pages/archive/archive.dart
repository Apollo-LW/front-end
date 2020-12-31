import 'package:Apollo/data/course_related_data.dart';
import 'package:Apollo/pages/Courses/models/CourseResponse.dart';
import 'package:Apollo/pages/Courses/views/classes.dart';
import 'package:flutter/material.dart';
import 'package:Apollo/pages/home/home_components.dart';
import 'package:Apollo/pages/Courses/courseList.dart';
import 'package:Apollo/pages/browse/chipBuilder.dart';
import 'package:Apollo/components/navdrawer.dart';

class Archive extends StatefulWidget {
  @override
  _ArchiveState createState() => _ArchiveState();
}

class _ArchiveState extends State<Archive> {
  final searchBarController = TextEditingController();
  List<CourseResponse> courses = [];
  List<List<CourseResponse>> listCourses = [
    [
      Data.course10,
      Data.course11,
    ],
    [Data.course13, Data.course12]
  ];

  List<String> times = [
    "2020 - 2021",
    "2019 - 2020",
    "2018 - 2019",
    "2017 - 2018"
  ];

  @override
  void initState() {
    //todo:8
    //1-fetch list of courses to display
    //courses= fetchedCourses
    //2- sort them by dates
    //listCourses= lists of courses based on dates
    //3-add time strings to times list

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
      body: ListView.builder(
        // margin: EdgeInsets.symmetric(vertical: 20.0),
        // height: 300.0,
        // decoration: BoxDecoration(
        // color:Colors.amberAccent,
        // ),
        itemBuilder: (context, index) {
          return CourseList(
            courses: listCourses[index],
            title: times[index],
            isEnrolled: true,
          );
        },
        itemCount: listCourses.length,
      ),
    );
  }
}
