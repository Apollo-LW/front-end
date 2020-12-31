import 'package:Apollo/pages/Courses/models/Chapter.dart';
import 'package:Apollo/pages/Courses/models/question.dart';
import 'package:Apollo/pages/Courses/models/quiz.dart';
import 'package:Apollo/theme/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_picker/Picker.dart';

class CreateQuiz extends StatefulWidget {
  Chapter chapter;
  final bool isEditPage;
  final int articleIndex; //article index to edit
  CreateQuiz(
      {@required this.chapter, this.isEditPage = false, this.articleIndex});
  @overridei
  _CreateQuizState createState() => _CreateQuizState();
}

class _CreateQuizState extends State<CreateQuiz> {
  TextEditingController titleTextEditingController = TextEditingController();
  TextEditingController numberOfQuestionsController = TextEditingController();
  Duration quizDuration = Duration(seconds: 60);

  List<QuestionTextField> questionTextFields = [];

  getQuestions() {
    List<Question> questions = List();

    questionTextFields.forEach((element) {
      if (element.questionTitleController.text != "" &&
          element.correctAnswerController.text != "" &&
          element.getOptions() != [])
        questions.add(Question(
            title: element.questionTitleController.text,
            options: element.getOptions(),
            correctOption: element.correctAnswerController.text));
    });
    return questions;
  }

  getInitialEditPageData() {
    if (widget.isEditPage) {
      titleTextEditingController.text =
          widget.chapter.items[widget.articleIndex].title;
      numberOfQuestionsController.text =
          (widget.chapter.items[widget.articleIndex].numberOfQuestions)
              .toString();
      quizDuration = Duration(
          seconds:
              widget.chapter.items[widget.articleIndex].quizDurationInSeconds);

      int i = 1;
      widget.chapter.items[widget.articleIndex].questions.forEach((element) {
        questionTextFields.add(QuestionTextField(i++));
      });

      if (widget.chapter.items[widget.articleIndex].questions.length > 0) {
        for (int i = 0; i < questionTextFields.length; i++) {
          questionTextFields[i].questionTitleController.text =
              widget.chapter.items[widget.articleIndex].questions[i].title;
          questionTextFields[i].correctAnswerController.text = widget
              .chapter.items[widget.articleIndex].questions[i].correctOption;
          for (int j = 0; j < 4; j++) {
            questionTextFields[i].optionsTextFields[j].optionController.text =
                widget
                    .chapter.items[widget.articleIndex].questions[i].options[j];
          }
        }
      }
    } else {
      questionTextFields.add(QuestionTextField(1));
    }
  }

  @override
  void initState() {
    getInitialEditPageData();
    if (numberOfQuestionsController.text == null ||
        numberOfQuestionsController.text == "")
      numberOfQuestionsController.text = "1";
    super.initState();
    if (widget.chapter.items == null) widget.chapter.items = [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        tooltip: "أضف سؤال",
        onPressed: () {
          int num = int.parse(numberOfQuestionsController.text);
          num++;
          numberOfQuestionsController.text = num.toString();
          questionTextFields.add(QuestionTextField(
            num,
          ));
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text(widget.isEditPage ? "تعديل الاختبار" : "انشاء اختبار"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: "عنوان الاختبار",
                ),
                controller: titleTextEditingController,
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "عدد الأسئلة",
                ),
                keyboardType: TextInputType.number,
                controller: numberOfQuestionsController,
                onChanged: (val) {
                  int originalLength = questionTextFields.length;
                  if (int.parse(val) > originalLength) {
                    for (int i = originalLength; i < int.parse(val); i++) {
                      setState(() {
                        questionTextFields.add(QuestionTextField((i + 1)));
                      });
                    }
                  } else if (int.parse(val) < originalLength) {
                    for (int i = 0;
                        i < (originalLength - int.parse(val));
                        i++) {
                      setState(() {
                        questionTextFields.removeLast();
                        print(i);
                      });
                    }
                  }
                },
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                width: 130,
                child: RaisedButton(
                  color: Colors.blueGrey.shade400,
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "مدة الاختبار",
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Icon(Icons.timer)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  onPressed: () {
                    Picker(
                      adapter: NumberPickerAdapter(data: <NumberPickerColumn>[
                        const NumberPickerColumn(
                            begin: 0, end: 10, suffix: Text('ساعات  ')),
                        const NumberPickerColumn(
                            begin: 1, end: 60, suffix: Text(' دقائق ')),
                      ]),
                      delimiter: <PickerDelimiter>[
                        PickerDelimiter(
                          child: Container(
                            width: 30.0,
                            alignment: Alignment.center,
                            child: Icon(Icons.more_vert),
                          ),
                        )
                      ],
                      hideHeader: true,
                      confirmText: 'تأكيد',
                      confirmTextStyle: TextStyle(
                          inherit: false, color: Colors.red, fontSize: 22),
                      title: const Text('اختر مدة الاختبار'),
                      selectedTextStyle: TextStyle(color: Colors.blue),
                      onConfirm: (Picker picker, List<int> value) {
                        // You get your duration here
                        setState(() {
                          quizDuration = Duration(
                              hours: picker.getSelectedValues()[0],
                              minutes: picker.getSelectedValues()[1]);
                          print(quizDuration.inSeconds);
                        });
                      },
                    ).showDialog(context);
                  },
                ),
              ),
              SizedBox(
                height: 32,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return questionTextFields[index];
                },
                physics: ClampingScrollPhysics(),
                itemCount: questionTextFields.length,
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
                    if (widget.isEditPage) {
                      setState(() {
                        widget.chapter.items[widget.articleIndex].title =
                            titleTextEditingController.text;
                        widget.chapter.items[widget.articleIndex]
                                .numberOfQuestions =
                            int.parse(numberOfQuestionsController.text);
                        widget.chapter.items[widget.articleIndex].questions =
                            getQuestions();
                        widget.chapter.items[widget.articleIndex]
                            .quizDurationInSeconds = quizDuration.inSeconds;
                      });

                      Navigator.pop(context);
                    } else {
                      List<Question> questions = getQuestions();

                      widget.chapter.items.add(Quiz(
                          title: titleTextEditingController.text,
                          itemNumber: (widget.chapter.items.length + 1),
                          questions: questions,
                          numberOfQuestions: questions.length,
                          quizDurationInSeconds: quizDuration.inSeconds));
                      int count = 0;
                      Navigator.of(context).popUntil((_) => count++ >= 2);
                    }
                  },
                  child: Text(widget.isEditPage ? "تحرير" : "إنشاء"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class QuestionTextField extends StatelessWidget {
  final int questionNumber;

  QuestionTextField(this.questionNumber, {Key key}) : super(key: key);

  TextEditingController questionTitleController = TextEditingController();
  TextEditingController correctAnswerController = TextEditingController();

  List<OptionsTextField> optionsTextFields = [
    OptionsTextField(),
    OptionsTextField(),
    OptionsTextField(),
    OptionsTextField()
  ];
  List<String> getOptions() {
    List<String> options = List();
    optionsTextFields.forEach((element) {
      options.add(element.optionController.text);
    });
    return options;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("السؤال رقم " + questionNumber.toString()),
          TextField(
            decoration: InputDecoration(border: OutlineInputBorder()),
            onChanged: (val) {},
            controller: questionTitleController,
          ),
          SizedBox(
            height: 8,
          ),
          Text("الإجابة الصحيحة"),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
              onChanged: (val) {},
              controller: correctAnswerController,
            ),
          ),
          Text("جميع الخيارات"),
          ListView.builder(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            itemBuilder: (context, index) {
              return optionsTextFields[index];
            },
            itemCount: optionsTextFields.length,
          ),
        ],
      ),
    );
  }
}

class OptionsTextField extends StatelessWidget {
  TextEditingController optionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextField(
        decoration: InputDecoration(border: OutlineInputBorder()),
        controller: optionController,
        onChanged: (val) {},
      ),
    );
  }
}
