import 'package:Apollo/pages/Courses/models/CourseResponse.dart';
import 'package:Apollo/pages/Courses/models/article.dart';
import 'package:Apollo/pages/Courses/models/Chapter.dart';
import 'package:Apollo/pages/Courses/models/link.dart';
import 'package:Apollo/pages/Courses/models/question.dart';
import 'package:Apollo/pages/Courses/models/quiz.dart';
import 'package:Apollo/pages/Courses/models/resource.dart';
import 'package:Apollo/pages/Courses/models/video.dart';

class Data {
  static Resource resource1 = Resource(
      itemType: "text",
      text:
          "This lesson is gonna be about 1 2 3 and then we are going to do 1 2 3 then we will play chess then blah blah bllah blah");
  static Resource resource2 = Resource(
      itemType: "link",
      link: Link(
          title: "amazing song",
          url: "https://www.youtube.com/watch?v=YeHxFBv58PQ"));

  static Article article1 = Article(
      title: "What is Lorem Ipsum?",
      text:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed efficitur leo lacus, a iaculis magna mollis eget. Phasellus molestie congue mauris sed auctor. Proin commodo ante quis tellus aliquet, quis consequat nulla rutrum. Nam sed erat non felis consequat blandit vitae et est. Sed sed odio vitae tortor elementum semper. In id viverra tortor, a ultricies ante. Pellentesque convallis mauris in nisl laoreet elementum vitae sed odio. Vestibulum consequat purus quis lacus vehicula, ut ultrices magna ullamcorper. Vestibulum nisi ipsum, condimentum lobortis nibh vitae, malesuada mollis nibh. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer pharetra, nisl eu lobortis tincidunt, risus ante euismod massa, vel consectetur nunc neque venenatis nibh. Proin convallis condimentum blandit. Praesent sagittis elit eget eros laoreet facilisis. Pellentesque auctor tempor nisl nec lacinia.",
      itemNumber: 3,
      resources: [resource2, resource2, resource2]);
  static Chapter chapter1 = Chapter(chapterName: "Chapter 1- intro", items: [
    Video(
        title: "Intro To hiuhiuh",
        resources: [resource2, resource2, resource2],
        itemNumber: 1,
        url:
            'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
        length: "03:30",
        caption:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim"),
    quiz1,
    article1
  ]);
  static Question question1 = Question(
      options: ["hey the", "fa", "Asdf", "blah blah"],
      title: "What is the weather",
      correctOption: "fa");
  static Question question2 = Question(
      options: ["answer 1", "answer 3", "answer 9", "answer 2"],
      title: "What is life",
      correctOption: "answer 1");
  static Quiz quiz1 = Quiz(
      title: "chapter 1 quiz",
      itemNumber: 4,
      numberOfQuestions: 20,
      questions: [question1, question2, question1, question2]);
  static CourseResponse course1 = CourseResponse(
      courseName: "Asdf",
      courseId: "asdf",
      category: "الفيزياء",
      description:
          "علي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم . من المفترض أن نفرق بين هذه الحالات بكل سهولة ومرونة. في ذاك الوقت عندما تكون قدرتنا علي الاختيار غير مقيدة بشرط وعندما لا نجد ما يمنعنا أن نفعل الأفضل فها نحن نرحب بالسرور والسعادة ونتجنب كل ما يبعث إلينا الألم. في بعض الأحيان ونظراً للالتزامات التي يفرضها علينا الواجب والعمل سنتنازل غالباً ونرفض الشعور بالسرور ونقبل ما يجلبه إلينا الأسى. الإنسان الحكيم عليه أن يمسك زمام الأمور ويختار إما أن يرفض مصادر السعادة من أجل ما هو أكثر أهمية أو يتحمل الألم من أجل ألا يتحمل ما هو أسوأ. </p>",
      courseChapters: [Data.chapter1]);
}
