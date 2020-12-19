import 'package:flutter/material.dart';
import 'package:flutter_gallery/l10n/gallery_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:Apollo/pages/Courses/Course.dart';

class CourseCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Card(
            elevation: 1,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/course');
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Positioned(
                    child: AspectRatio(
                      child: Image.asset(
                        "assets/images/apollo.png",
                        fit: BoxFit.cover,
                      ),
                      aspectRatio: 3,
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Intro to Computer Science",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text("Section 1"),
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
    );
  }
}
