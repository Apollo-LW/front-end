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
            
      body: Center(
          child: ListView(
            children: [
              CourseCard(),
              CourseCard(),
              CourseCard(),
              CourseCard(),
              CourseCard(),
            ],
            ),
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
