import 'dart:math';

import 'package:Apollo/components/AppDropDown.dart';
import 'package:Apollo/pages/admin/components/category_info.dart';
import 'package:Apollo/pages/admin/components/icon_card.dart';
import 'package:Apollo/pages/admin/components/not_institution_card.dart';
import 'package:Apollo/pages/admin/onboarding/step_3.dart';
import 'package:Apollo/theme/AppColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Step2 extends StatefulWidget {
  final String title;

  const Step2({@required this.title});

  @override
  _Step2State createState() => _Step2State();
}

class _Step2State extends State<Step2> {
  TextEditingController textEditingController = TextEditingController();
  String selectedCategory = CategoryInfo.categories[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            child: Text(
              "إنهاء",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("إنشاء دورة جديدة"),
          ],
        ),
        leading: Container(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Transform.rotate(
              angle: pi,
              child: FAProgressBar(
                currentValue: 2,
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
                "خطوة 2 من 3",
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
                    child: Text("ما هي فئة الدورة؟",
                        style: TextStyle(fontSize: 24))),
                SizedBox(
                  height: 20,
                ),
                ButtonTheme(
                  alignedDropdown: true,
                  child: AppDropdown<String>(
                    placeholder: "Meditation level",
                    value: selectedCategory,
                    options: CategoryInfo.categories,
                    onChanged: (String val) {
                      setState(() {
                        selectedCategory = val;
                      });
                    },
                  ),
                  // child: DropdownButton(
                  //   focusColor: AppColors.darkBlue,
                  //   isExpanded: true,
                  //   hint: Text("sdf"),
                  //   value: selectedCategory,
                  //   items: CategoryInfo.buildDropdownMenuItems(),
                  //   onChanged: (val) {
                  //     setState(() {
                  //       selectedCategory = val;
                  //     });
                  //     print(val);
                  //   },
                  // ),
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
                    if (selectedCategory == CategoryInfo.categories[0]) {
                      Alert(
                        context: context,
                        title: "يجب عليك إختيار فئة.",
                      ).show();
                    } else {
                      Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) {
                          return Step3(
                            title: widget.title,
                            category: selectedCategory,
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
