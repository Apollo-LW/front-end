import 'package:Apollo/pages/Courses/models/Chapter.dart';
import 'package:Apollo/pages/Courses/views/article_page.dart';
import 'package:Apollo/pages/Courses/views/question_page.dart';
import 'package:Apollo/pages/Courses/views/start_quiz_page.dart';
import 'package:Apollo/pages/Courses/views/video_page.dart';
import 'package:Apollo/pages/admin/views/create_article.dart';
import 'package:Apollo/pages/admin/views/create_lecture.dart';
import 'package:Apollo/pages/admin/views/create_quiz.dart';
import 'package:Apollo/pages/admin/views/create_video.dart';
import 'package:Apollo/theme/AppColors.dart';
import 'package:flutter/material.dart';

class InstructorChapterCard extends StatefulWidget {
  final Chapter chapter;
  final Function addLecture;

  const InstructorChapterCard(
      {@required this.chapter, @required this.addLecture});

  @override
  _InstructorChapterCardState createState() => _InstructorChapterCardState();
}

class _InstructorChapterCardState extends State<InstructorChapterCard> {
  bool showDivider = true;
  @override
  Widget build(BuildContext context) {
    if (widget.chapter.items != null) if (!widget.chapter.items.isEmpty)
      showDivider = true;
    return Padding(
      padding: const EdgeInsets.only(right: 16.0, left: 16, bottom: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0, left: 16, right: 16),
            child: Text(widget.chapter.chapterName),
          ),
          widget.chapter.items != null
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
                        itemCount: widget.chapter.items.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            contentPadding: EdgeInsets.zero,
                            shape: index == 0 &&
                                    index == widget.chapter.items.length - 1
                                ? RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8))
                                : index == 0
                                    ? RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(8.0),
                                            topLeft: Radius.circular(8.0)),
                                      )
                                    : index == widget.chapter.items.length - 1
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
                                      index == widget.chapter.items.length - 1
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
                                      : index == widget.chapter.items.length - 1
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
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            widget.chapter.items[index].title
                                                        .length >
                                                    30
                                                ? widget.chapter.items[index]
                                                        .title
                                                        .ssubstring(0, 30) +
                                                    ".."
                                                : widget
                                                    .chapter.items[index].title,
                                          ),
                                          Text((widget.chapter.items[index]
                                                      .subtitle ==
                                                  "Quiz"
                                              ? ("اختبار - " +
                                                  widget.chapter.items[index]
                                                      .numberOfQuestions
                                                      .toString() +
                                                  " اسئلة")
                                              : widget.chapter.items[index]
                                                          .subtitle ==
                                                      "Article"
                                                  ? "مقال"
                                                  : "فيديو" +
                                                      (widget
                                                              .chapter
                                                              .items[index]
                                                              .length ??
                                                          ""))),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            width: 20,
                                            child: IconButton(
                                              onPressed: () {
                                                onPressEdit(index);
                                              },
                                              icon: Container(
                                                width: 20,
                                                child: Icon(Icons.edit_outlined,
                                                    color: AppColors.darkBlue),
                                              ),
                                              padding: EdgeInsets.zero,
                                              splashRadius: 20,
                                            ),
                                          ),
                                          Container(
                                            width: 25,
                                            child: IconButton(
                                              splashRadius: 20,
                                              icon: Icon(
                                                Icons.delete_outline,
                                                color: Colors.redAccent,
                                              ),
                                              onPressed: () {
                                                deleteItem(index);

                                                //previous code
                                                // widget.chapter.items
                                                //     .removeAt(index);
                                                if (widget
                                                    .chapter.items.isEmpty)
                                                  showDivider = false;
                                                setState(() {});
                                              },
                                            ),
                                          ),
                                          IconButton(
                                            splashRadius: 20,
                                            onPressed: () {
                                              previewLecture(context, index);
                                            },
                                            icon: Icon(
                                              Icons.preview_outlined,
                                              color: Colors.lightGreen,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
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
                      showDivider == false
                          ? SizedBox()
                          : Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Container(
                                height: 1,
                                color: AppColors.neutrals[800].withOpacity(0.4),
                                width: double.infinity,
                              ),
                            ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: InkWell(
                          onTap: widget.addLecture,
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
                          onTap: widget.addLecture,
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

  previewLecture(context, index) {
    widget.chapter.items[index].subtitle == "Quiz"
        ? Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => StartQuizPage(
                quiz: widget.chapter.items[index],
                isPreview: true,
              ),
            ))
        : widget.chapter.items[index].subtitle == "Article"
            ? Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ArticlePage(
                          article: widget.chapter.items[index],
                        )))
            : widget.chapter.items[index].subtitle == "Video"
                ? Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => VideoPage(
                              video: widget.chapter.items[index],
                            )))
                : print("hi");
  }

  onPressEdit(index) {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return widget.chapter.items[index].subtitle == "Article"
            ? CreateArticle(
                chapter: widget.chapter,
                articleIndex: index,
                isEditPage: true,
              )
            : widget.chapter.items[index].subtitle == "Video"
                ? CreateVideo(
                    chapter: widget.chapter,
                    videoIndex: index,
                    isEditPage: true,
                  )
                : CreateQuiz(
                    chapter: widget.chapter,
                    articleIndex: index,
                    isEditPage: true,
                  );
      },
    ));
  }

  deleteItem(index) {
    //todo:5
    //delete the following item: widget.chapter.items.removeAt(index);
    //(delete item at index from chapter)
  }
}
