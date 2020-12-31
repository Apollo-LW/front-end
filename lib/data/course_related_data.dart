import 'package:Apollo/pages/Courses/models/CourseResponse.dart';
import 'package:Apollo/pages/Courses/models/article.dart';
import 'package:Apollo/pages/Courses/models/Chapter.dart';
import 'package:Apollo/pages/Courses/models/link.dart';
import 'package:Apollo/pages/Courses/models/question.dart';
import 'package:Apollo/pages/Courses/models/quiz.dart';
import 'package:Apollo/pages/Courses/models/resource.dart';
import 'package:Apollo/pages/Courses/models/video.dart';

class Data {
  static List<Chapter> chapters = [chapter1, chapter1, chapter1];

  static Resource resource1 = Resource(
      itemType: "text",
      text:
          "This lesson is gonna be about 1 2 3 and then we are going to do 1 2 3 then we will play chess then blah blah bllah blah");
  static Resource resource2 = Resource(
      itemType: "link",
      link: Link(
          title: "موريم ايبسوم دولار ",
          url: "https://cpgovappaward.jo/ar#images-gallery-2"));

  static Resource resource3 = Resource(
      itemType: "link",
      link: Link(
          title: "وريم ايبسو وريم ايبسوم دولار ",
          url: "https://www.youtube.com/watch?v=WnqFEQ43WlM&feature=emb_logo"));

  static Article article1 = Article(
      title: "ايبسوم دولار سيت أميت",
      text:
          "<>لكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار  النشوة وتمجيد الألم نشأت بالفعل، وسأعرض لك التفاصيل لتكتشف حقيقة وأساس تلك السعادة البشرية، فلا أحد يرفض أو يكره أو يتجنب الشعور بالسعادة، ولكن بفضل هؤلاء الأشخاص الذين لا يدركون بأن السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في الحب ونيل المنال ويتلذذ بالآلام، الألم هو الألم ولكن نتيجة لظروف ما قد تكمن السعاده فيما نتحمله من كد وأس.",
      itemNumber: 3,
      resources: [resource2, resource2, resource2]);
  static Chapter chapter1 = Chapter(chapterName: "وريم ايبسوم دولار ", items: [
    Video(
      title: "وريم ايبسوم دولار سيت أميت",
      resources: [resource2, resource1, resource2],
      itemNumber: 1,
      url:
          "https://r3---sn-5hne6n7z.googlevideo.com/videoplayback?expire=1609470571&ei=Cz7uX_KAG5XH7gOwkblg&ip=2a0d%3A1000%3A0%3A2%3A92b1%3A1cff%3Afe54%3A402e&id=o-AGCln13tdopAxXhVvY1_JlqkZpBpNoK8QApPEHjckQp4&itag=18&source=youtube&requiressl=yes&vprv=1&mime=video%2Fmp4&ns=g2qp0SCbdOPfdlk-bR67YtMF&gir=yes&clen=11895708&ratebypass=yes&dur=222.029&lmt=1582371785619037&fvip=5&beids=23886213&c=WEB&txp=2216222&n=crarSRbmpkTh6c8N&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cns%2Cgir%2Cclen%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRgIhAKqpVIHrbGk3ICxUH6rK2glXK_tQdA3_8FkftPpueux7AiEA1zPy1dlwguOusQES1qLF_vb_2GETiHdag4xUCY3drNU=&cm2rm=sn-8uxa-5hhe7e,sn-5hnks76&fexp=23886213&req_id=a355195dce01a3ee&redirect_counter=2&cms_redirect=yes&mh=dB&mip=185.96.70.26&mm=34&mn=sn-5hne6n7z&ms=ltu&mt=1609448912&mv=m&mvi=5&pl=24&lsparams=mh,mip,mm,mn,ms,mv,mvi,pl&lsig=AG3C_xAwRQIhAPpscJo3GrEmzsKAptbOBFJQ2-YqOkcNBjMBM-yHf_E0AiB0tK6WsdAu4W1kVRncKwsd1mHkwsMm-MOTks2ZdX3sdg%3D%3D&ir=1&rr=12",
      length: " 03:30",
      caption:
          "<>لكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار  النشوة وتمجيد الألم نشأت بالفعل، وسأعرض لك التفاصيل لتكتشف حقيقة وأساس تلك السعادة البشرية، فلا أحد يرفض أو يكره أو يتجنب الشعور بالسعادة، ولكن بفضل هؤلاء الأشخاص الذين لا يدركون بأن السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في الحب ونيل المنال ويتلذذ بالآلام، الألم هو الألم ولكن نتيجة لظروف ما قد تكمن السعاده فيما نتحمله من كد وأس.",
    ),
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
      quizDurationInSeconds: 500,
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

  static CourseResponse course9 = CourseResponse(
      courseName: "تعرف على منصة درسك",
      imgUrl:
          "https://images.unsplash.com/photo-1465433045946-ba6506ce5a59?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
      category: "شبكات",
      description:
          "تعرف على كيفية استخدام منصة درسك للتعلم الالكتروني لتتمكن من مواكبة التقدم, وتستفيد من الحصة الصفية عن بعد.",
      courseChapters: [
        Chapter(chapterName: "وحدة 1 - التعريف بالمنصة", items: [
          Article(
              title: "ما هي منصة درسك؟",
              resources: [
                Resource(
                    itemType: "link",
                    text: "موقع المنصة",
                    link: Link(
                        title: "موقع المنصة", url: "https://darsak.gov.jo/"))
              ],
              text:
                  "منصة أردنية مجانية للتعلّم عن بُعد، توفر لطلبة المدارس من الصف الأول وحتى الصف الثاني الثانوي دروسًا تعليمية عن طريق مقاطع فيديو مصوَّرة مُنظّمة ومُجدولة وفقًا لمنهاج التعليم الأردنيّ، يُقدّمها نخبة متميزة من المعلمين والمعلمات لتسهّل على الطلبة مواصلة تعلّمهم، ومتابعة موادهم الدراسية. "),
          Video(
            title: "فيديو تعريفي عن المنصة",
            caption:
                "منصة درسك للتعليم عن بعد متوافرة على... وزارة التربية والتعليم",
            url:
                "https://r3---sn-5hnekn76.googlevideo.com/videoplayback?expire=1609468862&ei=XjfuX9m2Lo2QgQeXmYOoBw&ip=2a0d%3A1000%3A0%3A2%3A92b1%3A1cff%3Afe54%3A402e&id=o-AGrrFe11QF80k0Dh6J62coVp5jD6UeyQfEhYfQ4x5R_O&itag=18&source=youtube&requiressl=yes&vprv=1&mime=video%2Fmp4&ns=xCNOjrHG2wWDQ-rtu_sCtHwF&gir=yes&clen=1343267&ratebypass=yes&dur=61.393&lmt=1584867505037914&fvip=3&beids=23886213&c=WEB&txp=6216222&n=nxHMofHuF_zUCm1y&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cns%2Cgir%2Cclen%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRgIhANJb3STqAX59Po9Am_giUno-_GOwtglsEsEhswi6oxB6AiEA8r0Mwn1ovBM9vGqArHy4vE5DWUifhVxIHUFv7fdxrac%3D&cm2rm=sn-8uxa-5hhe7s,sn-5hnee67s&fexp=23886213&req_id=5fcc1f6187ada3ee&redirect_counter=2&cms_redirect=yes&mh=ml&mip=185.96.70.26&mm=34&mn=sn-5hnekn76&ms=ltu&mt=1609447234&mv=m&mvi=3&pl=24&lsparams=mh,mip,mm,mn,ms,mv,mvi,pl&lsig=AG3C_xAwRAIgFAG6PZmDKJJdsk4zNkp-kB5DIkgzybVP50pzoIp7VYECICmchd1q67qwbpE91Og4y10P2gJcdIhuHCPLaLcHW8Ea",
            resources: [
              Resource(
                  itemType: "link",
                  text: "موقع المنصة",
                  link:
                      Link(title: "موقع المنصة", url: "https://darsak.gov.jo/"))
            ],
          )
        ]),
        Chapter(chapterName: "الوحدة 2 - كيفية الإستخدام", items: [
          Video(
              resources: [
                Resource(
                    itemType: "link",
                    text: "موقع المنصة",
                    link: Link(
                        title: "موقع المنصة", url: "https://darsak.gov.jo/")),
                Resource(
                    itemType: "link",
                    text: "اخبار",
                    link: Link(
                        title: "اخبار",
                        url:
                            "https://alghad.com/%D8%A8%D8%AF%D8%A1-%D8%A7%D9%84%D8%A7%D8%AE%D8%AA%D8%A8%D8%A7%D8%B1%D8%A7%D8%AA-%D8%A7%D9%84%D9%85%D8%AF%D8%B1%D8%B3%D9%8A%D8%A9-%D8%B9%D8%A8%D8%B1-%D9%85%D9%86%D8%B5%D8%A9-%D8%AF%D8%B1%D8%B3%D9%83/"))
              ],
              title: "طريقة إنشاء اختبار إلكتروني للطلاب على منصة درسك",
              url:
                  "https://r3---sn-5hne6nsk.googlevideo.com/videoplayback?expire=1609468993&ei=4TfuX5mKEdiE7gPPmJfIBQ&ip=2a0d%3A1000%3A0%3A2%3A92b1%3A1cff%3Afe54%3A402e&id=o-AEvkvTF8sC2xBaG-vCwSnmueUoBV2X2SxzqTgeONEFdH&itag=18&source=youtube&requiressl=yes&vprv=1&mime=video%2Fmp4&ns=730pqrM1DYKMHA0316ItjkAF&gir=yes&clen=2157523&ratebypass=yes&dur=124.157&lmt=1601631432452921&fvip=3&beids=23886213&c=WEB&txp=6210222&n=yhfSyKJbz0FCVipL&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cns%2Cgir%2Cclen%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRgIhAPZpZGwRvWZ06eIHijc1rNGG7Zyx8oVfMqji8jL-Jy0vAiEArkdMIRdb36Wnp-L09ZiFMhyrpxHLQcQ9qP_qQbPkrKk%3D&cm2rm=sn-8uxa-5hhe7s,sn-5hnel77s&fexp=23886213&req_id=5caadb668b92a3ee&redirect_counter=2&cms_redirect=yes&mh=X2&mip=185.96.70.26&mm=34&mn=sn-5hne6nsk&ms=ltu&mt=1609447234&mv=m&mvi=3&pl=24&lsparams=mh,mip,mm,mn,ms,mv,mvi,pl&lsig=AG3C_xAwRQIhAOpoJ_8VdNGZCjtyF2mj6Q_lrMBEMyZEGTozouSV-NTCAiAfbePt4zg57ygzFk5cqOJb9OyIcVbqC5VMxIqe2yINtQ%3D%3D"),
          Video(
              resources: [
                Resource(
                    itemType: "link",
                    text: "موقع المنصة",
                    link: Link(
                        title: "موقع المنصة", url: "https://darsak.gov.jo/"))
              ],
              title: "طريقة انشاء واجب بيتي وارساله للطلاب على منصة درسك",
              url:
                  "https://r4---sn-5hne6nlk.googlevideo.com/videoplayback?expire=1609469179&ei=mzjuX7GdN8qrgQfN-LDwDA&ip=2a0d%3A1000%3A0%3A2%3A92b1%3A1cff%3Afe54%3A402e&id=o-AA6MjaMXcnjOFu9UWDZmwX6_ieCke2-9BO5Fy4Xf7TTY&itag=22&source=youtube&requiressl=yes&vprv=1&mime=video%2Fmp4&ns=qNGmjDDEriPnPxQZ1dvECl8F&ratebypass=yes&dur=68.638&lmt=1601133443204496&fvip=4&beids=23886213&c=WEB&txp=6216222&n=KFA8rp4eXqSRAD59&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cns%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIhANXD6pZKeQE8LDoOyQuBn1SlHcC9M3Ts4B2ToPhsbm6pAiA14PKidOGyDkTHA2aKxd8ljKWRDEcD2XYI8KGhXwPWOg%3D%3D&cm2rm=sn-8uxa-5hhe7e,sn-5hnee67z&fexp=23886213&req_id=7550b29facb6a3ee&redirect_counter=2&cms_redirect=yes&mh=Yt&mip=185.96.70.26&mm=34&mn=sn-5hne6nlk&ms=ltu&mt=1609447473&mv=m&mvi=4&pl=24&lsparams=mh,mip,mm,mn,ms,mv,mvi,pl&lsig=AG3C_xAwRgIhAJlyU6R3iPVHcV5NH7vghLN7xgZfoGT-6Z5uh4Ogk4HpAiEAxPspMPNlmit1Bk-9ZYsk-v3Y5BfHcwMQ-yT6oIzxzp8%3D"),
        ])
      ]);

  static CourseResponse course8 = CourseResponse(
      courseName: "مقدمة في  أمن الشبكات",
      courseId: "asdf",
      imgUrl:
          "https://images.unsplash.com/photo-1526374965328-7f61d4dc18c5?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
      category: "الشبكات",
      description:
          "ت هي مجموعة من الإجراءات التي يمكن خلالها توفير الحماية القصوى للمعلومات والبيانات في الشبكات من كافة المخاطر التي تهددها، وذلك من خلال توفير الأدوات والوسائل اللازم توفيرها لحماية المعلومات من المخاطر الداخلية أو الخارجية.",
      courseChapters: chapters);

  static CourseResponse course2 = CourseResponse(
      category: "اللغات",
      courseId: "asdf",
      courseName: "مقدمة في اللغة الفرنسية",
      imgUrl:
          "https://images.unsplash.com/photo-1485199433301-8b7102e86995?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1080&q=80",
      courseChapters: chapters,
      description:
          " هي إحدى اللغات الرومانسية تحتل المركز الخامس من حيث اللغات الأكثر تحدثاً في العالم، حيث يتكلم بها نحو 80 مليون شخص في جميع أنحاء العالم كلغة رسمية أساسية، وحوالي 190 مليون شخص كلغة رسمية ثانية، وحوالي 274 مليون شخص في جميع أنحاء العالم.");

  static CourseResponse course3 = CourseResponse(
      category: "اللغات",
      courseId: "asdf",
      courseName: "تعلم اللغة الألمانية",
      imgUrl:
          "https://images.unsplash.com/photo-1449452198679-05c7fd30f416?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
      courseChapters: chapters,
      description:
          "هي إحدى اللغات الجرمانيَّة الغربيَّة؛ والتي هي بدورها إحدى فروع العائلة اللغويَّة الهندوأوروبيَّة. وتنتشرُ بصورةٍ رئيسيَّةٍ في أوروبَّا الوسطى فهي لغة رسميَّة لجمهوريَّة أَلمانيا الاتّحاديَّة، وجمهوريَّة النَّمسا، وإمارة ليختنشتاين، وإِحدى اللغات الوطنيَّة الأَربعة لسويسرا");
  static CourseResponse course4 = CourseResponse(
      category: "اللغات",
      courseId: "asdf",
      courseName: "تعرف على منصة درسك",
      imgUrl:
          "https://images.unsplash.com/photo-1465433045946-ba6506ce5a59?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
      courseChapters: chapters,
      description:
          "تعرف على كيفيك استخدام منصة درسك للتعلم الالكتروني لتتمكن من مواكبة تقدم الحصة الصفية عن بعد.");

  static CourseResponse course5 = CourseResponse(
      category: "اللغات",
      courseId: "asdf",
      courseName: "كيفية استخدام openEMIS للمعلمين",
      imgUrl:
          "https://www.openemis.org/wp-content/uploads/2018/04/OpenEMIS_Logo_Size512x199.png",
      courseChapters: chapters,
      description:
          "تعلم كيفية ادخال علامات الطلاب الى نظام البيانات التابع لوزارة التربية والتعليم");

  static CourseResponse course6 = CourseResponse(
      category: "اللغات",
      courseId: "asdf",
      courseName: "تكتيكات للفوز في الشطرنج",
      imgUrl:
          "https://images.unsplash.com/photo-1602968407815-5963b28c66af?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
      courseChapters: chapters,
      description:
          "في بداية اللعبة يتم وضع لوح الشطرنج بحيث يقع المربع ذو اللون الأبيض (أو اللون الفاتح) في الجانب الأيمن السفلي للاعب، ثم يتم ترتيب قطع الشطرنج بنفس الطريقة في كل مرة كالآتي: تعبئة الصف الثاني بالبيادق (الجنود)، وتوزّع القلاع في الزوايا، ثم تُوضع الأحصنة إلى جوارهم، يتبعهم الفيل، وأخيراً الملكة التي تُوضع دائماً في المربع المطابق للونها (الملكة السوداء على المربع الأسود، والملكة البيضاء على المربع الأبيض)، ويوضع الملك على المربع الآخر بجانبها.");
  static CourseResponse course10 = CourseResponse(
      category: "اللغات",
      courseId: "asdf",
      courseName: "وعؤ رؤ ضي لسيك التسيبفاص يسل ",
      imgUrl:
          "https://images.unsplash.com/photo-1542038784456-1ea8e935640e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8cGhvdG9ncmFwaHl8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60",
      courseChapters: chapters,
      description:
          "في بداية اللعبة يتم وضع لوح الشطرنج بحيث يقع المربع ذو اللون الأبيض (أو اللون الفاتح) في الجانب الأيمن السفلي للاعب، ثم يتم ترتيب قطع الشطرنج بنفس الطريقة في كل مرة كالآتي: تعبئة الصف الثاني بالبيادق (الجنود)، وتوزّع القلاع في الزوايا، ثم تُوضع الأحصنة إلى جوارهم، يتبعهم الفيل، وأخيراً الملكة التي تُوضع دائماً في المربع المطابق للونها (الملكة السوداء على المربع الأسود، والملكة البيضاء على المربع الأبيض)، ويوضع الملك على المربع الآخر بجانبها.");

  static CourseResponse course11 = CourseResponse(
      category: "اللغات",
      courseId: "asdf",
      courseName: "ور ؤضي لسيك التسيبفاص يسل ",
      imgUrl:
          "https://images.unsplash.com/photo-1422246358533-95dcd3d48961?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
      courseChapters: chapters,
      description:
          "في بداية اللعبة يتم وضع لوح الشطرنج بحيث يقع المربع ذو اللون الأبيض (أو اللون الفاتح) في الجانب الأيمن السفلي للاعب، ثم يتم ترتيب قطع الشطرنج بنفس الطريقة في كل مرة كالآتي: تعبئة الصف الثاني بالبيادق (الجنود)، وتوزّع القلاع في الزوايا، ثم تُوضع الأحصنة إلى جوارهم، يتبعهم الفيل، وأخيراً الملكة التي تُوضع دائماً في المربع المطابق للونها (الملكة السوداء على المربع الأسود، والملكة البيضاء على المربع الأبيض)، ويوضع الملك على المربع الآخر بجانبها.");

  static CourseResponse course12 = CourseResponse(
      category: "اللغات",
      courseId: "asdf",
      courseName: "ور ؤضي لسيك التسيبفاص يسل ",
      imgUrl:
          "https://images.unsplash.com/photo-1507537297725-24a1c029d3ca?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
      courseChapters: chapters,
      description:
          "في بداية اللعبة يتم وضع لوح الشطرنج بحيث يقع المربع ذو اللون الأبيض (أو اللون الفاتح) في الجانب الأيمن السفلي للاعب، ثم يتم ترتيب قطع الشطرنج بنفس الطريقة في كل مرة كالآتي: تعبئة الصف الثاني بالبيادق (الجنود)، وتوزّع القلاع في الزوايا، ثم تُوضع الأحصنة إلى جوارهم، يتبعهم الفيل، وأخيراً الملكة التي تُوضع دائماً في المربع المطابق للونها (الملكة السوداء على المربع الأسود، والملكة البيضاء على المربع الأبيض)، ويوضع الملك على المربع الآخر بجانبها.");

  static CourseResponse course13 = CourseResponse(
      category: "اللغات",
      courseId: "asdf",
      courseName: "ور ؤضي لسيك التسيبفاص يسل ",
      imgUrl:
          "https://images.unsplash.com/photo-1580894742597-87bc8789db3d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
      courseChapters: chapters,
      description:
          "في بداية اللعبة يتم وضع لوح الشطرنج بحيث يقع المربع ذو اللون الأبيض (أو اللون الفاتح) في الجانب الأيمن السفلي للاعب، ثم يتم ترتيب قطع الشطرنج بنفس الطريقة في كل مرة كالآتي: تعبئة الصف الثاني بالبيادق (الجنود)، وتوزّع القلاع في الزوايا، ثم تُوضع الأحصنة إلى جوارهم، يتبعهم الفيل، وأخيراً الملكة التي تُوضع دائماً في المربع المطابق للونها (الملكة السوداء على المربع الأسود، والملكة البيضاء على المربع الأبيض)، ويوضع الملك على المربع الآخر بجانبها.");

  static CourseResponse course14 = CourseResponse(
      category: "اللغات",
      courseId: "asdf",
      courseName: "ور ؤضي لسيك التسيبفاص يسل ",
      imgUrl:
          "https://images.unsplash.com/photo-1499781350541-7783f6c6a0c8?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1115&q=80",
      courseChapters: chapters,
      description:
          "في بداية اللعبة يتم وضع لوح الشطرنج بحيث يقع المربع ذو اللون الأبيض (أو اللون الفاتح) في الجانب الأيمن السفلي للاعب، ثم يتم ترتيب قطع الشطرنج بنفس الطريقة في كل مرة كالآتي: تعبئة الصف الثاني بالبيادق (الجنود)، وتوزّع القلاع في الزوايا، ثم تُوضع الأحصنة إلى جوارهم، يتبعهم الفيل، وأخيراً الملكة التي تُوضع دائماً في المربع المطابق للونها (الملكة السوداء على المربع الأسود، والملكة البيضاء على المربع الأبيض)، ويوضع الملك على المربع الآخر بجانبها.");
}
