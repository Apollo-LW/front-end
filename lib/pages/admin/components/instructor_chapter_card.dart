import 'package:Apollo/pages/Courses/models/chapter.dart';
import 'package:Apollo/pages/Courses/views/article_page.dart';
import 'package:Apollo/pages/Courses/views/question_page.dart';
import 'package:Apollo/pages/Courses/views/start_quiz_page.dart';
import 'package:Apollo/pages/Courses/views/video_page.dart';
import 'package:Apollo/pages/admin/views/create_lecture.dart';
import 'package:Apollo/theme/AppColors.dart';
import 'package:flutter/material.dart';

class InstructorChapterCard extends StatelessWidget {
  final Chapter chapter;
  final Function addLecture;

  const InstructorChapterCard(
      {@required this.chapter, @required this.addLecture});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0, left: 16, bottom: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0, left: 16, right: 16),
            child: Text(chapter.chapterName),
          ),
          chapter.items != null
              ? Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Column(
                    children: [
                      ListView.separated(
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemCount: chapter.items.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            onTap: () {
                              chapter.items[index].subtitle == "Quiz"
                                  ? Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => StartQuizPage(
                                            quiz: chapter.items[index]),
                                      ))
                                  : chapter.items[index].subtitle == "Article"
                                      ? Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => ArticlePage(
                                                    article:
                                                        chapter.items[index],
                                                  )))
                                      : chapter.items[index].subtitle == "Video"
                                          ? Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      VideoPage(
                                                        video: chapter
                                                            .items[index],
                                                      )))
                                          : print("hi");

                              print("SDF");
                            },
                            contentPadding: EdgeInsets.zero,
                            shape:
                                index == 0 && index == chapter.items.length - 1
                                    ? RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8))
                                    : index == 0
                                        ? RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(8.0),
                                                topLeft: Radius.circular(8.0)),
                                          )
                                        : index == chapter.items.length - 1
                                            ? RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(8.0),
                                                    bottomLeft:
                                                        Radius.circular(8.0)),
                                              )
                                            : RoundedRectangleBorder(),
                            title: Padding(
                              padding: index == 0 &&
                                      index == chapter.items.length - 1
                                  ? const EdgeInsets.only(
                                      left: 32.0,
                                      right: 24,
                                      bottom: 22,
                                      top: 22)
                                  : index == 0
                                      ? const EdgeInsets.only(
                                          left: 32.0,
                                          right: 24,
                                          bottom: 13,
                                          top: 22)
                                      : index == chapter.items.length - 1
                                          ? const EdgeInsets.only(
                                              left: 32.0,
                                              right: 24,
                                              bottom: 22,
                                              top: 14)
                                          : const EdgeInsets.only(
                                              left: 32.0,
                                              right: 24,
                                              bottom: 13,
                                              top: 14),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        chapter.items[index].itemNumber
                                            .toString(),
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      SizedBox(
                                        width: 24,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            chapter.items[index].title.length >
                                                    30
                                                ? chapter.items[index].title
                                                        .ssubstring(0, 30) +
                                                    ".."
                                                : chapter.items[index].title,
                                          ),
                                          Text(chapter.items[index].subtitle +
                                              (chapter.items[index].subtitle ==
                                                      "Quiz"
                                                  ? (" - " +
                                                      chapter.items[index]
                                                          .numberOfQuestions
                                                          .toString() +
                                                      " Questions")
                                                  : chapter.items[index]
                                                              .subtitle ==
                                                          "Article"
                                                      ? ""
                                                      : " - " +
                                                          (chapter.items[index]
                                                                  .length ??
                                                              ""))),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    chapter.items[index].icon,
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Container(
                              height: 1,
                              color: AppColors.neutrals[800].withOpacity(0.4),
                              width: double.infinity,
                            ),
                          );
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Container(
                          height: 1,
                          color: AppColors.neutrals[800].withOpacity(0.4),
                          width: double.infinity,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: InkWell(
                          onTap: addLecture,
                          child: Row(
                            children: [
                              Icon(
                                Icons.add,
                                color: AppColors.neutrals[700],
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "أضف درسا جديدا",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ))
              : Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    elevation: 1,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: addLecture,
                          child: Row(
                            children: [
                              Icon(
                                Icons.add,
                                color: AppColors.neutrals[700],
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "أضف درسا جديدا",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )),
        ],
      ),
    );
  }
}
