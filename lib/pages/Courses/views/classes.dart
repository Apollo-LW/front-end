import 'package:Apollo/pages/Courses/models/CourseResponse.dart';
import 'package:Apollo/pages/Courses/models/article.dart';
import 'package:Apollo/pages/Courses/models/Chapter.dart';
import 'package:Apollo/pages/Courses/models/link.dart';
import 'package:Apollo/pages/Courses/models/question.dart';
import 'package:Apollo/pages/Courses/models/quiz.dart';
import 'package:Apollo/pages/Courses/models/resource.dart';
import 'package:Apollo/pages/Courses/models/video.dart';
import 'package:flutter/material.dart';

import '../components/chapter_card.dart';

class Classes extends StatelessWidget {
  final List<Chapter> chapters;
  Classes({this.chapters});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ChapterCard(chapter: chapters[index]);
      },
      itemCount: chapters.length,
    );
  }
}
