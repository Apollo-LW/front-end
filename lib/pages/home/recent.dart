import 'package:flutter/material.dart';
import 'package:flutter_gallery/l10n/gallery_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:Apollo/pages/home/home_components.dart';
import 'package:Apollo/pages/Courses/Course.dart';
import 'package:Apollo/pages/Courses/resources.dart';

class Recent extends StatelessWidget {
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: 40),
                  Text(
                    "Recent",
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
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: 40),
                  Text(
                    "PSUT",
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
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: 40),
                  Text(
                    "PSUT - HTU",
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
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: 40),
                  Text(
                    "Recent",
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
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        // backgroundColor: Color.red,
        child: Text("course"),
      ),
      // bottomNavigationBar: BottomTabbarExample(),
      // endDrawer: NavDrawer(),
    );
  }
}
