import 'package:Apollo/pages/Courses/models/quiz.dart';
import 'package:Apollo/pages/Courses/quiz_score.dart';
import 'package:Apollo/pages/Courses/views/question_page.dart';
import 'package:flutter/material.dart';

class StartQuizPage extends StatelessWidget {
  Quiz quiz;
  StartQuizPage({@required this.quiz});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            quiz.title,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    "Number of Questions: " + quiz.questions.length.toString(),
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Text(
                  "Quiz Duration " +
                      (quiz.quizDurationInSeconds / 60).toInt().toString() +
                      ":" +
                      (quiz.quizDurationInSeconds % 60).toString(),
                  style: TextStyle(fontSize: 20),
                ),
                Spacer(),
                SizedBox(
                  height: 32,
                ),
                RaisedButton(
                  child: Text("Start Now"),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => QuestionPage(
                                quiz: quiz,
                                questionNumber: 0,
                                timeLeft: null,
                              )),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
