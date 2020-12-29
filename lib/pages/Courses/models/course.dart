import 'package:Apollo/pages/Courses/models/chapter.dart';

class Course {
  String title;
  String description;
  String category;
  bool isPublic;
  bool isPublished;
  List<String> owners;
  List<String> members;
  List<Chapter> courseChapters;
  String courseType;
  DateTime courseDateOfCreation;
  String courseId;
  int isEnrolled;
  String courseImg;

  Course(
      {this.isPublished,
      this.isPublic,
      this.owners,
      this.courseChapters,
      this.members,
      this.courseType,
      this.courseDateOfCreation,
      this.courseId,
      this.title,
      this.courseImg,
      this.description,
      this.isEnrolled,
      this.category});
}
