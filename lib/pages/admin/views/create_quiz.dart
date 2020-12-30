import 'package:Apollo/pages/Courses/models/chapter.dart';
import 'package:Apollo/pages/Courses/models/question.dart';
import 'package:Apollo/pages/Courses/models/quiz.dart';
import 'package:Apollo/theme/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_picker/Picker.dart';

class CreateQuiz extends StatefulWidget {
  Chapter chapter;
  CreateQuiz({@required this.chapter});
  @override
  _CreateQuizState createState() => _CreateQuizState();
}

class _CreateQuizState extends State<CreateQuiz> {
  TextEditingController titleTextEditingController = TextEditingController();
  TextEditingController numberOfQuestionsController = TextEditingController();
  Duration duration = Duration(minutes: 60);
  List<QuestionTextField> questionTextFields = [
    QuestionTextField(
      1,
    )
  ];

  @override
  void initState() {
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
        title: Text("انشاء اختبار"),
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
                  questionTextFields = [];
                  for (int i = 1; i <= int.parse(val); i++) {
                    setState(() {
                      questionTextFields.add(QuestionTextField(i));
                    });
                  }
                },
              ),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                padding: EdgeInsets.zero,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "مدة الاختبار",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 1,
                      color: AppColors.neutrals[700].withOpacity(0.5),
                    )
                  ],
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
                      duration = Duration(
                          hours: picker.getSelectedValues()[0],
                          minutes: picker.getSelectedValues()[1]);
                      print(duration.inSeconds);
                    },
                  ).showDialog(context);
                },
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
                    List<Question> questions = List();

                    questionTextFields.forEach((element) {
                      if (element.questionTitleController.text != "" &&
                          element.correctAnswerController.text != "" &&
                          element.getOptions() != [])
                        questions.add(Question(
                            title: element.questionTitleController.text,
                            options: element.getOptions(),
                            correctOption:
                                element.correctAnswerController.text));
                    });

                    widget.chapter.items.add(Quiz(
                        title: titleTextEditingController.text,
                        itemNumber: (widget.chapter.items.length + 1),
                        questions: questions,
                        numberOfQuestions: questions.length,
                        quizDurationInSeconds: duration.inSeconds));
                    int count = 0;
                    Navigator.of(context).popUntil((_) => count++ >= 2);
                  },
                  child: Text("إنشاء"),
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
