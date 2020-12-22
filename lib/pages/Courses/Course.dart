import 'package:Apollo/components/navdrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gallery/l10n/gallery_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:Apollo/pages/home/home_components.dart';
import 'package:Apollo/pages/chat/chat.dart';
import 'package:Apollo/pages/Courses/resources.dart';
import 'package:Apollo/pages/Courses/classes.dart';

class Course extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        initialIndex: 1,
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              SliverAppBar(
                toolbarHeight: 60,
                expandedHeight: 50,
//  collapsedHeight: 30.0001,
//                        pinned:true,
                title: Text("Intro to computer science"),
                automaticallyImplyLeading: true,
                bottom: TabBar(
                  tabs: [
                    Container(
                      child: Tab(
                        icon: Icon(
                          Icons.chat,
                          size: 20,
                        ),
                        // text: "Messages"
                      ),
                      height: 30,
                    ),
                    Container(
                      child: Tab(
                        icon: Icon(
                          Icons.school,
                          size: 20,
                        ),
                        // text: "Classes"
                      ),
                      height: 30,
                    ),
                    Container(
                      child: Tab(
                        icon: Icon(
                          Icons.file_copy,
                          size: 20,
                        ),
                        // text: "Resources"
                      ),
                      height: 30,
                    ),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              Center(child: Chat()),
              Center(child: Classes()),
              Center(
                child: Resources(),
              )
            ],
          ),
        ),
      ),
      endDrawer: NavDrawer(),
    );
  }
}
