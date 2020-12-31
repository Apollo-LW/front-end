import 'package:Apollo/components/navdrawer.dart';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:Apollo/pages/home/home_components.dart';
import 'package:Apollo/pages/chat/chat.dart';
import 'package:Apollo/pages/Courses/resources.dart';
import 'package:Apollo/pages/chat/chat_rooms.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        initialIndex: 1,
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              SliverAppBar(
                pinned: true,
                title: Text("الرسائل"),
                automaticallyImplyLeading: true,
                bottom: TabBar(
                  tabs: [
                    Container(
                      child: Tab(text: "المجموعات"),
                      height: 30,
                    ),
                    Container(
                      child: Tab(text: "الرسائل الخاصة"),
                      height: 30,
                    ),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              ChatRoom(),
              ChatRoom(),
            ],
          ),
        ),
      ),
      drawer: NavDrawer(),
    );
  }
}
