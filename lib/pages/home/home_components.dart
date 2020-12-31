import 'package:Apollo/pages/Courses/models/CourseResponse.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:Apollo/pages/Courses/Course.dart';

class CourseCard extends StatelessWidget {
  final CourseResponse course;
  bool enrolled = false;
  CourseCard({@required this.course});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              clipBehavior: Clip.antiAlias,
              // clipBehavior: Clip.hardEdge,
              elevation: 1,
              child: InkWell(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Positioned(
                          child: AspectRatio(
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              alignment: Alignment.topCenter,
                              child: Image.asset(
                                "assets/images/apollo.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            aspectRatio: 3,
                          ),
                        ),
                        if (!enrolled)
                          Tooltip(
                            message: "النضمام",
                            child: FlatButton(
                              child: Icon(Icons.add),
                              onPressed: () {
                                Scaffold.of(context).showSnackBar(SnackBar(
                                  content: Text("لقد تم ضمك للمساق بنجاح! 🎉"),
                                  behavior: SnackBarBehavior.floating,
                                ));
                              },
                            ),
                          )
                      ],
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              course.courseName,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              course.description.substring(
                                      0,
                                      course.description.length > 110
                                          ? 110
                                          : course.description.length) +
                                  "...",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
