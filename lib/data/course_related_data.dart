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
      courseName: "مقدمة في الشبكات",
      courseId: "asdf",
      imgUrl:
          "https://images.unsplash.com/photo-1446776653964-20c1d3a81b06?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=751&q=80",
      category: "الشبكات",
      description: "يشتمل التدريب في مساق مقدِمة إلى عالم الشبكات أيضاً على كيفية تصميم وتعديل الشبكات الصغيرة، وكيفية الربط بين جهازين بطريقة (Peer to Peer)، وكيفية تصميم شبكة سلكية باستخدام موزع (Switch)، وكيفية عمل (Cross Cable)، وتغير (IP) للأجهزة، وكيفية التوصيل بين جهازين والتأكد من جاهزية الشبكة، وكيفية عمل وإنشاء ملف مشترك بين جهازين وتبادل الملفات من خلال الشبكة.",
      courseChapters: [Data.chapter1]);
  static CourseResponse course8 = CourseResponse(
      courseName: "مقدمة في  أمن الشبكات",
      courseId: "asdf",
      imgUrl:
          "https://images.unsplash.com/photo-1526374965328-7f61d4dc18c5?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
      category: "الشبكات",
      description: "ت هي مجموعة من الإجراءات التي يمكن خلالها توفير الحماية القصوى للمعلومات والبيانات في الشبكات من كافة المخاطر التي تهددها، وذلك من خلال توفير الأدوات والوسائل اللازم توفيرها لحماية المعلومات من المخاطر الداخلية أو الخارجية.",
      courseChapters: [Data.chapter1]);

  static CourseResponse course2 = CourseResponse(
      category: "اللغات",
      courseId: "asdf",
      courseName: "مقدمة في اللغة الفرنسية",
      imgUrl:
          "https://images.unsplash.com/photo-1485199433301-8b7102e86995?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1080&q=80",
      courseChapters: [Data.chapter1],
      description:
          " هي إحدى اللغات الرومانسية تحتل المركز الخامس من حيث اللغات الأكثر تحدثاً في العالم، حيث يتكلم بها نحو 80 مليون شخص في جميع أنحاء العالم كلغة رسمية أساسية، وحوالي 190 مليون شخص كلغة رسمية ثانية، وحوالي 274 مليون شخص في جميع أنحاء العالم.");

  static CourseResponse course3 = CourseResponse(
      category: "اللغات",
      courseId: "asdf",
      courseName: "تعلم اللغة الألمانية",
      imgUrl:
          "https://images.unsplash.com/photo-1449452198679-05c7fd30f416?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
      courseChapters: [Data.chapter1],
      description:
          "هي إحدى اللغات الجرمانيَّة الغربيَّة؛ والتي هي بدورها إحدى فروع العائلة اللغويَّة الهندوأوروبيَّة. وتنتشرُ بصورةٍ رئيسيَّةٍ في أوروبَّا الوسطى فهي لغة رسميَّة لجمهوريَّة أَلمانيا الاتّحاديَّة، وجمهوريَّة النَّمسا، وإمارة ليختنشتاين، وإِحدى اللغات الوطنيَّة الأَربعة لسويسرا");
  static CourseResponse course4 = CourseResponse(
      category: "اللغات",
      courseId: "asdf",
      courseName: "تعرف على منصة درسك",
      imgUrl:
          "https://images.unsplash.com/photo-1465433045946-ba6506ce5a59?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
      courseChapters: [Data.chapter1],
      description:
          "تعرف على كيفيك استخدام منصة درسك للتعلم الالكتروني لتتمكن من مواكبة تقدم الحصة الصفية عن بعد.");

  static CourseResponse course5 = CourseResponse(
      category: "اللغات",
      courseId: "asdf",
      courseName: "كيفية استخدام openEMIS للمعلمين",
      imgUrl:
          "https://www.openemis.org/wp-content/uploads/2018/04/OpenEMIS_Logo_Size512x199.png",
      courseChapters: [Data.chapter1],
      description:
          "تعلم كيفية ادخال علامات الطلاب الى نظام البيانات التابع لوزارة التربية والتعليم");

  static CourseResponse course6 = CourseResponse(
      category: "اللغات",
      courseId: "asdf",
      courseName: "تكتيكات للفوز في الشطرنج",
      imgUrl:
          "https://images.unsplash.com/photo-1602968407815-5963b28c66af?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
      courseChapters: [Data.chapter1],
      description:
          "في بداية اللعبة يتم وضع لوح الشطرنج بحيث يقع المربع ذو اللون الأبيض (أو اللون الفاتح) في الجانب الأيمن السفلي للاعب، ثم يتم ترتيب قطع الشطرنج بنفس الطريقة في كل مرة كالآتي: تعبئة الصف الثاني بالبيادق (الجنود)، وتوزّع القلاع في الزوايا، ثم تُوضع الأحصنة إلى جوارهم، يتبعهم الفيل، وأخيراً الملكة التي تُوضع دائماً في المربع المطابق للونها (الملكة السوداء على المربع الأسود، والملكة البيضاء على المربع الأبيض)، ويوضع الملك على المربع الآخر بجانبها.");
}
