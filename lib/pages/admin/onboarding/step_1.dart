import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

class Step1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Make a course"),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
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
              Center(
                  child: Text("هل تتبع هذه الدورة جهة معينة؟",
                      style: TextStyle(fontSize: 24)))
            ],
          ),
        ),
      ),
    );
  }
}
