import 'package:flutter/material.dart';
import 'package:Apollo/pages/home/home_components.dart';
import 'package:Apollo/pages/Courses/courseList.dart';
import 'package:Apollo/pages/browse/chipBuilder.dart';
import 'package:Apollo/components/navdrawer.dart';

class Browse extends StatelessWidget {
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
          CourseList(title: "Robotics"),
          CourseList(title: "Programming"),
          CourseList(title: "Mathmatics"),
          CourseList(title: "Astronomy"),
        ],
      ),
      endDrawer: NavDrawer(),
    );
  }
}
