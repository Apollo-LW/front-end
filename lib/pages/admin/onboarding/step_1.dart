import 'dart:math';

import 'package:Apollo/pages/admin/components/icon_card.dart';
import 'package:Apollo/pages/admin/components/not_institution_card.dart';
import 'package:Apollo/pages/admin/onboarding/step_2.dart';
import 'package:Apollo/theme/AppColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Step1 extends StatefulWidget {
  @override
  _Step1State createState() => _Step1State();
}

class _Step1State extends State<Step1> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("إنشاء دورة جديدة"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Transform.rotate(
              angle: pi,
              child: FAProgressBar(
                currentValue: 1,
                maxValue: 3,
                direction: Axis.horizontal,
                verticalDirection: VerticalDirection.up,
                backgroundColor: Colors.grey.withOpacity(0.3),
                borderRadius: 20,
                displayText: '',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 8),
              child: Text(
                "خطوة 1 من 3",
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Text("ما هو عنوان هذه الدورة؟",
                        style: TextStyle(fontSize: 24))),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration:
                      InputDecoration(hintText: "مثلا: مقدمة في علوم الحاسوب"),
                  controller: textEditingController,
                  maxLength: 60,
                ),
              ],
            ),
            Spacer(),
            Center(
              child: Container(
                width: double.infinity,
                child: RaisedButton(
                  textColor: Colors.white,
                  color: AppColors.neutrals[700].withOpacity(0.8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  onPressed: () {
                    print(textEditingController.text);
                    if (textEditingController.text == "")
                      Alert(
                        context: context,
                        title: "يجب عليك إدخال عنوان.",
                      ).show();
                    else {
                      Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) {
                          return Step2(
                            title: textEditingController.text,
                          );
                        },
                      ));
                    }
                  },
                  child: Text("التالي"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
