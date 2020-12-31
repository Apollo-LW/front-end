import 'package:Apollo/pages/Courses/components/chapter_card.dart';
import 'package:Apollo/pages/Courses/models/CourseResponse.dart';
import 'package:Apollo/pages/Courses/models/question.dart';

import 'package:Apollo/pages/Courses/models/article.dart';
import 'package:Apollo/pages/Courses/models/link.dart';
import 'package:Apollo/pages/Courses/models/quiz.dart';
import 'package:Apollo/pages/Courses/models/resource.dart';
import 'package:Apollo/pages/Courses/models/video.dart';
import 'package:Apollo/pages/admin/components/instructor_chapter_card.dart';
import 'package:Apollo/theme/AppColors.dart';
import 'package:flutter/material.dart';

import 'create_lecture.dart';

class Curriculum extends StatefulWidget {
  final CourseResponse course;
  Curriculum({this.course});

  @override
  _CurriculumState createState() => _CurriculumState();
}

class _CurriculumState extends State<Curriculum> {
  @override
  void initState() {
//todo:12
    //fetch course

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.course.courseChapters != null
        ? ListView.builder(
            itemBuilder: (context, index) {
              return InstructorChapterCard(
                chapter: widget.course.courseChapters[index],
                addLecture: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CreateLecture(
                              chapter: widget.course.courseChapters[index],
                            )),
                  );
                },
              );
            },
            itemCount: widget.course.courseChapters.length,
          )
        : SizedBox();
  }
}
