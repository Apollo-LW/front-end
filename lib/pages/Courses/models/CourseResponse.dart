import 'package:Apollo/pages/Courses/models/Chapter.dart';

class CourseResponse {
  final bool isActive, isPublic;
  final String courseId,
      courseName,
      courseDateOfCreation,
      error,
      category,
      description;
  List<dynamic> courseOwners, courseMembers;
  List<Chapter> courseChapters;

  CourseResponse(
      {this.courseId,
      this.courseName,
      this.isActive,
      this.isPublic,
      this.courseChapters,
      this.courseOwners,
      this.courseMembers,
      this.courseDateOfCreation,
      this.error,
      this.category,
      this.description});

  factory CourseResponse.fromJson(Map<String, dynamic> json) {
    return CourseResponse(
        courseId: json['courseId'],
        courseName: json['courseName'],
        courseDateOfCreation: json['courseDateOfCreation'],
        courseMembers: json['courseMembers'],
        courseOwners: json['courseOwners'],
        courseChapters: json['courseChapters'],
        isActive: json['isActive'],
        isPublic: json['isPublic'],
        error: "");
  }

  factory CourseResponse.fromError(String errorValue) {
    return CourseResponse(
        courseId: "",
        courseName: "",
        courseDateOfCreation: "",
        courseMembers: null,
        courseOwners: null,
        courseChapters: null,
        isActive: false,
        isPublic: false,
        error: errorValue);
  }
}
