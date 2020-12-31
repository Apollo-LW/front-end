import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:Apollo/pages/Courses/Course.dart';

class CourseCard extends StatelessWidget {
  bool enrolled = false;

  String description =
      "لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد أكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس أيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت نيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا كيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم.";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              clipBehavior: Clip.antiAlias,
              // clipBehavior: Clip.hardEdge,
              elevation: 1,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/course');
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Positioned(
                          child: AspectRatio(
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              alignment: Alignment.topCenter,
                              child: Image.asset(
                                "assets/images/apollo.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            aspectRatio: 3,
                          ),
                        ),
                        if (!enrolled)
                          Tooltip(
                            message: "Enroll",
                            child: FlatButton(
                              child: Icon(Icons.add),
                              onPressed: () {
                                Scaffold.of(context).showSnackBar(SnackBar(
                                  content:
                                      Text("You enrolled at the course! 🎉"),
                                  behavior: SnackBarBehavior.floating,
                                ));
                              },
                            ),
                          )
                      ],
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "مقدمة لعلوم الحاسوب",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(description.substring(
                                    0,
                                    description.length > 180
                                        ? 180
                                        : description.length) +
                                "...", style: TextStyle(fontSize: 12),
                                ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
