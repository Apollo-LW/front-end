import 'dart:math';

import 'package:Apollo/pages/admin/components/icon_card.dart';
import 'package:Apollo/pages/admin/components/not_institution_card.dart';
import 'package:Apollo/theme/AppColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

class UnusedStep extends StatefulWidget {
  @override
  _UnusedStepState createState() => _UnusedStepState();
}

class _UnusedStepState extends State<UnusedStep> {
  bool institutionCardIsChosen = false;

  bool notInstitutionCardIsChosen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Make a course"),
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
                maxValue: 4,
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
                "خطوة 1 من 4",
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
                child: Text("هل تتبع هذه الدورة جهة معينة؟",
                    style: TextStyle(fontSize: 24))),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      institutionCardIsChosen = true;
                      notInstitutionCardIsChosen = false;
                    });
                  },
                  child: IconCard(
                    isChosen: institutionCardIsChosen,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      institutionCardIsChosen = false;
                      notInstitutionCardIsChosen = true;
                    });
                  },
                  child: NotInstitutionCard(
                    isChosen: notInstitutionCardIsChosen,
                  ),
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
                  onPressed: () {},
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
