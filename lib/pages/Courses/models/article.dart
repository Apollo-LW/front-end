import 'package:Apollo/pages/Courses/models/resource.dart';
import 'package:flutter/material.dart';

class Article {
  String title;
  int itemNumber;
  String text;
  List<Resource> resources;

  //ui shit
  String subtitle = "Article";
  IconData icon = Icons.picture_as_pdf_outlined;
  Article(
      {@required this.title,
      @required this.itemNumber,
      this.resources,
      @required this.text});
}
