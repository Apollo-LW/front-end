import 'package:flutter/material.dart';
import 'package:Apollo/pages/chat/chat.dart';
import 'package:Apollo/pages/chat/ChatRoomCard.dart';
import 'package:Apollo/components/navdrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gallery/l10n/gallery_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:Apollo/pages/home/home_components.dart';
import 'package:Apollo/pages/chat/chat.dart';
import 'package:Apollo/pages/Courses/resources.dart';
import 'package:Apollo/pages/Courses/classes.dart';
import 'package:Apollo/pages/chat/chat_rooms.dart';

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
                // toolbarHeight: 60,
                // expandedHeight: 50,
                leading: FlatButton(
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    // Navigator.pushReplacementNamed(context, "/home");
                  },
                ),
                pinned: true,
                title: Text("Chats"),
                automaticallyImplyLeading: true,
                bottom: TabBar(
                  tabs: [
                    Container(
                      child: Tab(text: "Groups"),
                      height: 30,
                    ),
                    Container(
                      child: Tab(text: "Direct"),
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
      endDrawer: NavDrawer(),
    );
  }
}
