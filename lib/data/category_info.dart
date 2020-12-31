import 'package:flutter/material.dart';

class CategoryInfo {
  static List<String> categories = [
    "اختار فئة",
    "علم الروبوتات",
    "الفيزياء",
    "الرياضيات",
    "الشبكات",
    "اللغات"
  ];

  static List<DropdownMenuItem<String>> buildDropdownMenuItems() {
    List<DropdownMenuItem<String>> items = List();

    for (String category in CategoryInfo.categories) {
      items.add(
        DropdownMenuItem(
          value: category,
          child: Text(category),
        ),
      );
    }
    return items;
  }
}
