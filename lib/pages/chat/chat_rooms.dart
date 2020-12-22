import 'package:flutter/material.dart';
import 'package:Apollo/pages/chat/chat.dart';
import 'package:Apollo/pages/chat/ChatRoomCard.dart';

class ChatRoom extends StatelessWidget {
  const ChatRoom({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ChatRoomCard(),
        ChatRoomCard(),
        ChatRoomCard(),
        ChatRoomCard(),
      ],
    );
  }
}
