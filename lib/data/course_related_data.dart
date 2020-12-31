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
      category: "شبكات",
      description:
          "يشتمل التدريب في مساق مقدِمة إلى عالم الشبكات أيضاً على كيفية تصميم وتعديل الشبكات الصغيرة، وكيفية الربط بين جهازين بطريقة (Peer to Peer)، وكيفية تصميم شبكة سلكية باستخدام موزع (Switch)، وكيفية عمل (Cross Cable)، وتغير (IP) للأجهزة، وكيفية التوصيل بين جهازين والتأكد من جاهزية الشبكة، وكيفية عمل وإنشاء ملف مشترك بين جهازين وتبادل الملفات من خلال الشبكة.",
      courseChapters: [
        Chapter(chapterName: "وحدة 1 - ما هي الشباكات", items: [
          Article(
              title: "شبكة الحاسوب ",
              resources: [
                Resource(
                    itemType: "link",
                    text: "المصدر",
                    link: Link(
                        title: "المصدر",
                        url:
                            "https://ar.m.wikipedia.org/wiki/%D8%B4%D8%A8%D9%83%D8%A9_%D8%AD%D8%A7%D8%B3%D9%88%D8%A8"))
              ],
              text:
                  "شبكة الحاسوب (بالإنجليزية: Computer Network)‏ هي نظام لربط جهازين أو أكثر باستخدام إحدى تقنيات نظم الاتصالات من أجل تبادل المعلومات والموارد والبيانات بينها المتاحة للشبكة مثل الآلة الطابعة أو البرامج التطبيقية أياً كان نوعها وكذلك تسمح بالتواصل المباشر بين المستخدمين.[1][2][3] وبشكل عام تعتبر دراسة شبكات الحاسوب أحد فروع علم الاتصالات."),
          Video(
              title: "مقدمة في الشبكات الالكترونية وشبكات الحاسب",
              caption: "الفيديو مفيد لمين يريد ان يتعمق بفهم المادة",
              url:
                  "https://r2---sn-5hne6nsd.googlevideo.com/videoplayback?expire=1609464866&ei=wifuX-iiBZi8gQf2jaCgDw&ip=2a0d%3A1000%3A0%3A2%3A92b1%3A1cff%3Afe54%3A402e&id=o-AL98gWz48kViOQFrstzQ94HyJZBSvQ5gF4Dw6QF6LQsL&itag=18&source=youtube&requiressl=yes&vprv=1&mime=video%2Fmp4&ns=xyjsmEugM5RtsxD-l7Sg7EMF&gir=yes&clen=3406660&ratebypass=yes&dur=176.030&lmt=1584379774516236&fvip=2&beids=23886213&c=WEB&txp=6216222&n=p59R7vcxExnPNLiS&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cns%2Cgir%2Cclen%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRAIgBcPIqoIZe44HjqMl8IBvnhOn6kFHjmd2d_HdO1QL_uQCIG7DsdMAzQ0b5iiiRynhxYQj2XWu4pLsdrsQIlfsOy7S&redirect_counter=1&cm2rm=sn-8uxa-5hhe7l&fexp=23886213&req_id=6b9e0014a30ea3ee&cms_redirect=yes&mh=jY&mip=185.96.70.26&mm=29&mn=sn-5hne6nsd&ms=rdu&mt=1609443173&mv=m&mvi=2&pl=24&lsparams=mh,mip,mm,mn,ms,mv,mvi,pl&lsig=AG3C_xAwRQIgaZovlrkqKufebNcZXECHRIpn_AL7cWifbyYTPk10kPwCIQCajvKleMqTAjMdWVRLXGJ1n1SYKb5pqP_NBmBaiZ_E9g%3D%3D"),
        ]),
        Chapter(chapterName: "وحدة 2 - لماذا نستخدم الشباكات", items: [
          Article(
              title: "فوائد شبكات الحاسوب",
              itemNumber: null,
              resources: [
                Resource(
                    itemType: "link",
                    text: "معلومات اضافية",
                    link: Link(
                        title: "معلومات اضافية",
                        url: "https://www.youtube.com/watch?v=kgwqrqKrox8"))
              ],
              text:
                  "شبكة الحاسوب هي مجموعة من أجهزة الحواسيب ومكوّنات الأجهزة الأخرى التي تتصل بها عن طريق قنوات الاتصال التي تتيح تبادل الموارد والمعلومات، كما أنّها مجموعة الاتصالات السلكيّة واللاسلكيّة، وتتحكم هذه الأجهزة في جميع الجوانب الحديثة من شبكة الهاتف العامة PSTN، وتزداد يوماً بعد يوم هذه الاتصالات بسبب حاجة العالم لها، ولمواكبة التكنولوجيا من جهة أخرى. تاريخ شبكات الحاسوب في أواخر 1950ميلاديّة كانت أول محاولات لربط بين الأجهزة بين أجهزة حواسيب الرادار العسكري، وفي عام 1959 اقترح إيفانوفيتش للجنة المركزية في الحزب الشيوعي للاتحاد السوفييتي خطة تفصيلية لإعادة تنظيم السيطرة على القوات المسلحة السوفيتية والاقتصاد السوفيتي، وهي شبكة من مراكز الحوسبة، وفي عام 1964 طور الباحثون في كلية دارتموث نظام تقاسم دارتموث، وفي العام نفسه، في معهد ماساتشوستس للتكنولوجيا، وهو معهد للأبحاث، قام الجنرال الكتريك ومختبرات بدعم بيل لاستخدام الحاسوب في عمليّة التوجيه وإدارة الاتصالات الهاتفية، وفي عام 1965 صنع توماس ماريل ولورانس روبرتس أول شبكة واسعة WAN، واستمرت هذه التطورات حتى أصبحت إلى ما عليه الآن من تطور هائل.")
        ])
      ]);

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
