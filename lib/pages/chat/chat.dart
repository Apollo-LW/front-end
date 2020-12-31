import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:Apollo/pages/chat/chatComponents.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final messageBoxController = TextEditingController();

//Require convesation ID returns List<Message> messages

  List<Message> messages = [
    Message(text: "Hello There", userID: "123", time: "12:30pm"),
    Message(
        text: "I wanted to ask you something..",
        userID: "123",
        time: "12:30pm"),
    Message(text: "whats up?", userID: "124", time: "12:31pm"),
    Message(
        text: "How do we make an awesome application like this?",
        userID: "123",
        time: "12:33pm"),
    Message(
        text:
            "It is easy, you just need to have an idea and forget about sleeping for a couple of weeks",
        userID: "124",
        time: "12:34pm"),
    Message(
        text: "Wow awesome thanks!\nYour are the best ❤",
        userID: "123",
        time: "12:36pm"),
    Message(text: "Hello There", userID: "123", time: "12:30pm"),
    Message(
        text: "I wanted to ask you something..",
        userID: "123",
        time: "12:30pm"),
    Message(text: "whats up?", userID: "124", time: "12:31pm"),
    Message(
        text: "How do we make an awesome application like this?",
        userID: "123",
        time: "12:33pm"),
    Message(
        text:
            "It is easy, you just need to have an idea and forget about sleeping for a couple of weeks",
        userID: "124",
        time: "12:34pm"),
    Message(
        text: "Wow awesome thanks!\nYour are the best ❤",
        userID: "123",
        time: "12:36pm"),
  ];

  bool appBar = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        reverse: true,
        children: [
          Container(
              decoration: BoxDecoration(
                  border: Border(top: BorderSide(color: Colors.blueAccent))),
              child: Form(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 30, 0),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 7,
                            child: TextFormField(
                                controller: messageBoxController,
                                decoration: const InputDecoration(
                                  hintText: 'Enter your Message',
                                ))),
                        Expanded(
                          flex: 1,
                          child: FlatButton(
                            onPressed: () {
                              setState(() {
                                messages.add(Message(
                                    text: messageBoxController.text,
                                    time: '13:00pm',
                                    userID: '124'));
                                messageBoxController.text = "";
                              });
                            },
                            child: Icon(Icons.send),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
          Expanded(child: ChatArea(messages: messages)),
        ],
      ),
    );
  }
}

class ChatArea extends StatelessWidget {
  const ChatArea({
    Key key,
    @required this.messages,
  }) : super(key: key);

  final List<Message> messages;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: ListView.builder(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        reverse: true,
        itemCount: messages.length,
        itemBuilder: (context, index) {
          return MessageBox(message: messages[(messages.length - 1) - index]);
        },
      ),
    );
  }
}
