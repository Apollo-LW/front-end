import 'package:Apollo/pages/Courses/models/Chapter.dart';
import 'package:Apollo/pages/admin/components/icon_card.dart';
import 'package:Apollo/pages/admin/components/not_institution_card.dart';
import 'package:Apollo/pages/admin/views/create_article.dart';
import 'package:Apollo/pages/admin/views/create_quiz.dart';
import 'package:Apollo/pages/admin/views/create_video.dart';
import 'package:Apollo/theme/AppColors.dart';
import 'package:flutter/material.dart';

class CreateLecture extends StatefulWidget {
  final Chapter chapter;

  CreateLecture({@required this.chapter});

  @override
  _CreateLectureState createState() => _CreateLectureState();
}

class _CreateLectureState extends State<CreateLecture> {
  bool videoIsChosen = false;

  bool articleIsChosen = false;

  bool quizIsChosen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("اضافة درس"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "اختر نوع الدرس",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Center(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          videoIsChosen = true;
                          articleIsChosen = false;
                          quizIsChosen = false;
                        });
                      },
                      child: IconCard(
                        title: "فيديو",
                        icon: Icons.video_collection_outlined,
                        color: AppColors.darkBlue,
                        isChosen: videoIsChosen,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          videoIsChosen = false;
                          articleIsChosen = true;
                          quizIsChosen = false;
                        });
                      },
                      child: IconCard(
                        title: "مقالة",
                        icon: Icons.article_outlined,
                        color: Colors.redAccent,
                        isChosen: articleIsChosen,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          videoIsChosen = false;
                          articleIsChosen = false;
                          quizIsChosen = true;
                        });
                      },
                      child: IconCard(
                        title: "اختبار",
                        icon: Icons.grading_outlined,
                        color: Colors.lightGreen,
                        isChosen: quizIsChosen,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                child: RaisedButton(
                  textColor: Colors.white,
                  color: AppColors.neutrals[700],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return articleIsChosen
                            ? CreateArticle(
                                chapter: widget.chapter,
                              )
                            : videoIsChosen
                                ? CreateVideo(
                                    chapter: widget.chapter,
                                  )
                                : CreateQuiz(
                                    chapter: widget.chapter,
                                  );
                      },
                    ));
                  },
                  child: Text("التالي"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
