import 'package:flutter/material.dart';

class CoursePartnerTextField extends StatelessWidget {
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      height: 40,
      child: TextField(
        controller: textEditingController,
        decoration: InputDecoration(
          labelText: 'شريك 1',
        ),
      ),
    );
  }
}
