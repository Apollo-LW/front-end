import 'package:flutter/material.dart';
import 'package:flutter_gallery/l10n/gallery_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:Apollo/pages/general_components.dart';
import 'package:Apollo/pages/chat/chatComponents.dart';

String selfID = "124"; // TO BE Replaced with the USER Object

class Message {
  String text;
  String userID;
  var time;
  Message({
    this.text,
    this.userID,
    this.time
  });
}

Widget messageBoxTemplate(message) {
  return MessageBox(message: message);
}

class MessageBox extends StatefulWidget {
   Message message;
  MessageBox({
    this.message
  });

  @override
  _MessageBoxState createState() => _MessageBoxState();
}

class _MessageBoxState extends State<MessageBox> {
  @override
  Widget build(BuildContext context) {
    if (widget.message.userID == selfID) {
      return Padding(
        padding: const EdgeInsets.all(15.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(flex: 1, child: SizedBox()),
              Expanded(
                flex: 9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              // Text(
                              //   "Mohammad Rimawi",
                              //   style: TextStyle(fontWeight: FontWeight.bold),
                              // ),
                              // SizedBox(
                              //   height: 8,
                              // ),
                              SelectableText(widget.message.text),
                            ],
                          ))),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                        child: Text(
                          widget.message.time,
                          style: TextStyle(
                            fontSize: 11,
                          ),
                        ),
                    ),
                  ],
                )
              ),
              SizedBox(
                width: 5.0,
              ),
              Expanded(flex: 1, child: CircleAvatar()),
            ],
          ),
      );
    } else {

      return Padding(
        padding: const EdgeInsets.all(15.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(flex: 1, child: CircleAvatar()),
              SizedBox(
                width: 5.0,
              ),
              Expanded(
                flex: 9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                "Mohammad Rimawi",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              SelectableText(widget.message.text),
                            ],
                          ))),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                        child: Text(
                          widget.message.time,
                          style: TextStyle(
                            fontSize: 11,
                          ),
                        ),
                    ),
                  ],
                )),
              Expanded(flex: 1, child: SizedBox()),
            ],
          ),
      );
    }
  }
}