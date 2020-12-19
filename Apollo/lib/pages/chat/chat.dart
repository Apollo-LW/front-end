import 'package:flutter/material.dart';
import 'package:flutter_gallery/l10n/gallery_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:Apollo/pages/general_components.dart';
import 'package:Apollo/pages/chat/chatComponents.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10,0,10,0),
        child: ListView(
          // controller: _scrollController,
          reverse: true,
          shrinkWrap: true,
          // children: new UnmodifiableListView(_messages),
          children:
              messages.reversed.map((message) => MessageBox(message: message)).toList(),
        ),
      ),

      bottomNavigationBar: Container(
        
         decoration: BoxDecoration(
         
    border: Border(
      top:BorderSide(color: Colors.blueAccent)
      )
  ),
        
          child: Form(
        child: Container(
        
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 10, 0),
            child: Row(children: [
              Expanded(
                  flex: 7,
                  child: TextFormField(
                      decoration: const InputDecoration(
                    hintText: 'Enter your Message',
                  ))),
              Expanded(
                flex: 1,
                child: FlatButton(
                  onPressed: () {
                    // Validate will return true if the form is valid, or false if
                    // the form is invalid.
                    // if (_formKey.currentState.validate()) {
                    // Process data.
                    // }
                  },
                  child: Icon(Icons.send),
                ),
              ),
            ]),
          ),
        ),
        // child:
        //       TextFormField(
        //         decoration: const InputDecoration(
        //           hintText: 'Enter your Message',
        //           icon: Icon(Icons.send),
        //         ),

        //       ),
      )),

      // TextFormField(

      //     validator: (value) {
      //       if (value.isEmpty) {
      //         return 'Please enter some text';
      //       }
      //       return null;
      //     },
      //   ),
    );
  }
}
