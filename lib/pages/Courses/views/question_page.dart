import 'dart:async';
import 'dart:math';

import 'package:Apollo/pages/Courses/models/quiz.dart';
import 'package:Apollo/pages/Courses/quiz_score.dart';
import 'package:Apollo/pages/Courses/views/classes.dart';
import 'package:Apollo/pages/Courses/views/finish_quiz_page.dart';
import 'package:Apollo/theme/AppColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

class QuestionPage extends StatefulWidget {
  final bool isPreview;
  Quiz quiz;
  int questionNumber;
  int timeLeft;
  QuestionPage(
      {@required this.quiz,
      @required this.questionNumber,
      @required this.timeLeft,
      this.isPreview});
  @override
  _QuestionPageState createState() => _QuestionPageState(
      quiz: quiz, questionNumber: questionNumber, timeLeft: timeLeft);
}

class _QuestionPageState extends State<QuestionPage> {
  final Quiz quiz;
  final int questionNumber;
  int timeLeft;
  String selectedAnswer;
  Timer timer;

  List<IconData> icons = new List(100);
  _QuestionPageState({this.quiz, this.questionNumber, this.timeLeft});
  @override
  void initState() {
    quiz.questions[questionNumber].options.shuffle();

    for (int i = 0; i < quiz.questions[questionNumber].options.length; i++)
      icons[i] = Icons.radio_button_off;

    super.initState();
  }

  startTimer() {
    if (timeLeft == null) timeLeft = quiz.quizDurationInSeconds;

    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (timeLeft > 0) {
        setState(() {
          timeLeft--;
        });
      } else {
        timer.cancel();
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => FinishQuizPage(quiz: quiz)),
        );
      }
    });
  }

  @override
  void didChangeDependencies() {
    startTimer();
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Center(child: Text(quiz.title)),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Transform.rotate(
                    angle: pi,
                    child: FAProgressBar(
                      currentValue:
                          (((questionNumber) / quiz.questions.length) * 100)
                              .toInt(),
                      backgroundColor: Colors.grey.withOpacity(0.3),
                      borderRadius: 20,
                      displayText: '%',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Question " +
                              (questionNumber + 1).toString() +
                              "/" +
                              quiz.questions.length.toString(),
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          "Time: " + timeLeft.toString(),
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Text(
                    quiz.questions[questionNumber].title + "?",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: quiz.questions[questionNumber].options.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(20)),
                          child: ListTile(
                            selectedTileColor: Colors.redAccent,
                            onTap: () {
                              setState(() {
                                for (int i = 0;
                                    i <
                                        quiz.questions[questionNumber].options
                                            .length;
                                    i++) icons[i] = Icons.radio_button_off;

                                icons[index] = Icons.radio_button_checked;

                                selectedAnswer = quiz
                                    .questions[questionNumber].options[index];
                              });
                            },
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(quiz
                                    .questions[questionNumber].options[index]),
                                Icon(icons[index])
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  Center(
                    child: Container(
                      width: double.infinity,
                      child: RaisedButton(
                        textColor: Colors.white,
                        color: AppColors.neutrals[700],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        onPressed: () {
                          if (selectedAnswer ==
                              quiz.questions[questionNumber].correctOption) {
                            quizScore++;
                          }

                          if (quiz.questions.length != (questionNumber + 1)) {
                            ;
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => QuestionPage(
                                        questionNumber: (questionNumber + 1),
                                        quiz: quiz,
                                        timeLeft: timeLeft,
                                        isPreview: widget.isPreview,
                                      )),
                            );
                          } else {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FinishQuizPage(
                                        quiz: quiz,
                                        isPreview: widget.isPreview,
                                      )),
                            );
                          }
                        },
                        child: Text("Next"),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
