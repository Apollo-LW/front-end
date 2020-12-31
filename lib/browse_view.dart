import 'package:Apollo/components/background_container.dart';
import 'package:Apollo/pages/Courses/models/CourseResponse.dart';
import 'package:Apollo/theme/AppColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImagePopupPage extends StatelessWidget {
  final CourseResponse course;

  const ImagePopupPage({Key key, this.course}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
      child: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: course.imgUrl == null
                        ? NetworkImage(
                            "https://images.unsplash.com/photo-1497316730643-415fac54a2af?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=80")
                        : NetworkImage(course.imgUrl),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.white,
                        ),
                        onPressed: () => Navigator.pop(context)),
                  ],
                ),
                Container(
                  width: double.infinity,
                  child: MediaQuery.removePadding(
                    context: context,
                    child: Card(
                      elevation: 4,
                      margin: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                      )),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              course.courseName,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(24),
              child: ListView(
                children: [
                  course.description != null
                      ? Text(
                          course.description,
                        )
                      : SizedBox()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
