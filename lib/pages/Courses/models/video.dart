import 'package:Apollo/pages/Courses/models/resource.dart';
import 'package:flutter/material.dart';

class Video {
  String title;
  int itemNumber;
  String caption;
  String url;
  String length;
  List<Resource> resources;

  //ui
  String subtitle = "Video";
  IconData icon = Icons.video_collection_outlined;
  Video(
      {@required this.title,
      this.length,
      @required this.itemNumber,
      this.caption,
      @required this.url,
      this.resources});
}
