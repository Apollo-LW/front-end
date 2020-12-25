import 'package:Apollo/pages/Courses/models/question.dart';
import 'package:flutter/material.dart';

class Quiz {
  String title;
  int itemNumber;
  List<Question> questions;
  int numberOfQuestions;
  int score = 0;
  int quizDurationInSeconds = 30;

  //ui shit
  String subtitle = "Quiz";
  IconData icon = Icons.question_answer_outlined;
  Quiz(
      {this.title,
      this.questions,
      this.itemNumber,
      this.numberOfQuestions,
      this.quizDurationInSeconds = 30});
}
