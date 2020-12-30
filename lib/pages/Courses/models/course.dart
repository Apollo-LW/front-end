import 'package:Apollo/pages/Courses/models/chapter.dart';

class Course {
  String title;
  String description;
  String category;
  bool isPublic;
  bool isPublished;
  List<String> instructors;
  List<String> members;
  List<Chapter> chapters = [];
  String courseType;
  DateTime courseDateOfCreation;
  String courseId;
  int isEnrolled;
  String courseImg;

  Course(
      {this.isPublished = false,
      this.isPublic = false,
      this.instructors,
      this.chapters,
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
