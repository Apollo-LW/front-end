import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:Apollo/pages/chat/chat.dart';

class ChatRoomCard extends StatelessWidget {
  const ChatRoomCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 4, 10, 4),
      child: ListTile(
        title: Text("Mohammad Rimawi"),
        subtitle: Text("Hello there!"),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Chat()),
          );
        },
        leading: Badge(
          child: CircleAvatar(),
          badgeContent: Text(
            "5",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
