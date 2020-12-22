import 'package:Apollo/pages/Courses/classes.dart';
import 'package:Apollo/pages/Courses/resources.dart';
import 'package:Apollo/pages/chat/chat.dart';
import 'package:flutter/material.dart';

class CourseTabViewController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: DefaultTabController(
        length: 3,
        child: new NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              new SliverAppBar(
                pinned: true,
                floating: true,
                title: Text("Intro to computer science"),
                forceElevated: innerBoxIsScrolled,
                bottom: new TabBar(
                  tabs: <Tab>[
                    Tab(
                      icon: Icon(
                        Icons.chat,
                        size: 20,
                      ),
                      // text: "Messages"
                    ),
                    Tab(
                      icon: Icon(
                        Icons.school,
                        size: 20,
                      ),
                      // text: "Classes"
                    ),
                    Tab(
                      icon: Icon(
                        Icons.file_copy,
                        size: 20,
                      ),
                      // text: "Resources"
                    ),
                  ],
                ),
              ),
            ];
          },
          body: new TabBarView(
            children: <Widget>[
              Center(child: Chat()),
              Center(child: Classes()),
              Center(
                child: Resources(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
