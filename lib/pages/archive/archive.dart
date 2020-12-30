import 'package:flutter/material.dart';
import 'package:Apollo/pages/home/home_components.dart';
import 'package:Apollo/pages/Courses/courseList.dart';
import 'package:Apollo/pages/browse/chipBuilder.dart';
import 'package:Apollo/components/navdrawer.dart';

class Archive extends StatelessWidget {
  final searchBarController = TextEditingController();

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
          CourseList(title: "2020 - 2021"),
          CourseList(title: "2019 - 2020"),
          CourseList(title: "2018 - 2019"),
          CourseList(title: "2017 - 2018"),
        ],
      ),
    );
  }
}
