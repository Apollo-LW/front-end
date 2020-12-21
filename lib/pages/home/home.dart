import 'package:flutter/material.dart';
import 'package:flutter_gallery/l10n/gallery_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:Apollo/pages/general_components.dart';
import 'package:Apollo/pages/home/home_components.dart';
import 'package:Apollo/pages/Courses/Course.dart';
import 'package:Apollo/pages/Courses/resources.dart';
import 'package:Apollo/pages/Courses/courseList.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "أبولو",
          style: TextStyle(fontFamily: 'TheSansArabic-Bold'),
        ),
        backgroundColor: Colors.lightBlue[900],
        centerTitle: true,
      ),
      body: ListView(
        // margin: EdgeInsets.symmetric(vertical: 20.0),
        // height: 300.0,
        // decoration: BoxDecoration(
        // color:Colors.amberAccent,
        // ),
        children: [
         
         CourseList(title:"Recent"),
         CourseList(title:"Search"),
          CourseList(title:"Hamad"),
           CourseList(title:"Hamad"),
          
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        // backgroundColor: Color.red,
        child: Text("course"),
      ),
      bottomNavigationBar: NavBar(),
      endDrawer: NavDrawer(),
    );
  }
}