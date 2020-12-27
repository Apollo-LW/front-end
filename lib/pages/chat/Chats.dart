import 'package:flutter/material.dart';
import 'package:Apollo/pages/chat/chat.dart';
import 'package:Apollo/pages/chat/ChatRoomCard.dart';
import 'package:Apollo/components/navdrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:Apollo/pages/home/home_components.dart';
import 'package:Apollo/pages/chat/chat.dart';
import 'package:Apollo/pages/Courses/resources.dart';
import 'package:Apollo/pages/chat/chat_rooms.dart';
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
      floatingActionButton: SpeedDial(
        // overlayColor: Colors.white,
        overlayOpacity: .4,

        // elevation: 5,
        tooltip: "edit",
        // backgroundColor: Colors.amber,
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: IconThemeData(size: 22.0),
        // child: Icon(Icons.add),
        onOpen: () => print('OPENING DIAL'),
        onClose: () => print('DIAL CLOSED'),
        visible: true,
        curve: Curves.bounceIn,
        children: [
          SpeedDialChild(
            child: Icon(Icons.accessibility, color: Colors.white),
            backgroundColor: Colors.deepOrange,
            onTap: () => print('FIRST CHILD'),
            label: 'First Child',
            labelStyle: TextStyle(fontWeight: FontWeight.w500),
            labelBackgroundColor: Colors.deepOrangeAccent,
          ),
          SpeedDialChild(
            child: Icon(Icons.brush, color: Colors.white),
            backgroundColor: Colors.green,
            onTap: () => print('SECOND CHILD'),
            label: 'Second Child',
            labelStyle: TextStyle(fontWeight: FontWeight.w500),
            labelBackgroundColor: Colors.green,
          ),
          SpeedDialChild(
            child: Icon(Icons.keyboard_voice, color: Colors.white),
            backgroundColor: Colors.blue,
            onTap: () => print('THIRD CHILD'),
            labelWidget: Container(
              color: Colors.blue,
              margin: EdgeInsets.only(right: 10),
              padding: EdgeInsets.all(6),
              child: Text('Custom Label Widget'),
            ),
          ),
        ],
      ),
      endDrawer: NavDrawer(),
    );
  }
}
