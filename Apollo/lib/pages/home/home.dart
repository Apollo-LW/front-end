import 'package:flutter/material.dart';
import 'package:flutter_gallery/l10n/gallery_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:Apollo/pages/general_components.dart';
import 'package:Apollo/pages/home/home_components.dart';
import 'package:Apollo/pages/Courses/Course.dart';
import 'package:Apollo/pages/Courses/resources.dart';

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
          Container(
            width: 500,
            height: 180,
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
          Container(
            width: 500,
            height: 180,
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
          Container(
            width: 500,
            height: 180,
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
          Container(
            width: 350,
            height: 180,
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
          Container(
            width: 350,
            height: 180,
            child: ListView(
              // clipBehavior: ,
              // scrollDirection: ,
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                SizedBox(width: 30),
                CourseCard(),
                CourseCard(),
                SizedBox(width: 30),
              ],
            ),
          ),
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
