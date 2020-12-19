import 'package:flutter/material.dart';

class ResourceItem extends StatefulWidget {
  @override
  _ResourceItemState createState() => _ResourceItemState();
}

class _ResourceItemState extends State<ResourceItem> {
  var _color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: FlatButton(
        child: Center(
          child: Container(
              alignment: Alignment.centerLeft,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.picture_as_pdf,
                    // Icons.image,
                    color: Colors.red[900],
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Chapter 1: IntroductionFile",
                    style: TextStyle(color: _color),
                  ),
                ],
              )),
        ),
        onPressed: () {
          setState(() {
            // _color = Colors.blue;
          });
        },
      ),
    );
  }
}
