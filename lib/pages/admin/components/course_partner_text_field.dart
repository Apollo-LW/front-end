import 'package:flutter/material.dart';

class CoursePartnerTextField extends StatelessWidget {
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
        labelText: '',
      ),
    );
  }
}
