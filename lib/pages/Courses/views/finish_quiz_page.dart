import 'dart:math';

import 'package:Apollo/pages/Courses/Course.dart';
import 'package:Apollo/pages/Courses/models/quiz.dart';
import 'package:Apollo/pages/Courses/quiz_score.dart';
import 'package:Apollo/pages/Courses/views/classes.dart';
import 'package:Apollo/theme/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

class FinishQuizPage extends StatefulWidget {
  Quiz quiz;
  final bool isPreview;
  FinishQuizPage({this.quiz, this.isPreview});
  @override
  _FinishQuizPageState createState() => _FinishQuizPageState();
}

class _FinishQuizPageState extends State<FinishQuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Transform.rotate(
                angle: pi,
                child: FAProgressBar(
                  currentValue: 100.toInt(),
                  backgroundColor: Colors.grey.withOpacity(0.3),
                  borderRadius: 20,
                  displayText: '%',
                ),
              ),
              SizedBox(
                height: 58,
              ),
              Text(
                "Your Score is: " +
                    quizScore.toString() +
                    "/" +
                    widget.quiz.questions.length.toString(),
                style: TextStyle(fontSize: 32),
              ),
              Spacer(),
              Container(
                width: double.infinity,
                child: RaisedButton(
                  textColor: Colors.white,
                  color: AppColors.neutrals[700],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  onPressed: () {
                    int count = 0;
                    Navigator.of(context).popUntil((_) => count++ >= (2));
                  },
                  child: Text("Finished"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    quizScore = 0;
    super.dispose();
  }
}
