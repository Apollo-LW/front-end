import 'dart:convert';
import 'dart:io';

import 'package:Apollo/pages/Courses/models/Chapter.dart';
import 'package:Apollo/pages/Courses/models/ChapterCreate.dart';
import 'package:Apollo/pages/Courses/models/CourseCreate.dart';
import 'package:Apollo/pages/Courses/models/CourseEnrollment.dart';
import 'package:Apollo/pages/Courses/models/CourseEnrollmentRequest.dart';
import 'package:Apollo/pages/Courses/models/CourseResponse.dart';
import 'package:Apollo/pages/Courses/models/Lecture.dart';
import 'package:Apollo/pages/Courses/models/ShareCourse.dart';
import 'package:dio/dio.dart';

class CourseService {
  final String jsonDataHeader = "application/json";
  final String _endpoint = "http://192.168.100.49:8081/course/";
  final Dio _dio = Dio();

  Future<CourseResponse> getCourseById(String courseId) async {
    try {
      Response response = await _dio.get(_endpoint + courseId);
      return CourseResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return CourseResponse.fromError("$error");
    }
  }

  Future<CourseEnrollment> getCourseEnrollment(String courseId) async {
    try {
      Response response =
          await _dio.get(_endpoint + "/enroll/requests/" + courseId);
      return CourseEnrollment.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return CourseEnrollment.fromError(error);
    }
  }

  Future<Chapter> getCourseChapter(String courseId) async {
    try {
      Response response = await _dio.get(_endpoint + "chapter/" + courseId);
      return Chapter.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return Chapter.fromError("$error");
    }
  }

  Future<Lecture> getChapterLectures(String chapterId) async {
    try {
      Response response =
          await _dio.get(_endpoint + "chapter/lecture/" + chapterId);
      return Lecture.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return Lecture.fromError(error);
    }
  }

  Future<CourseResponse> createCourse(CourseCreate courseCreate) async {
    try {
      Response response = await _dio.post(
        _endpoint,
        options:
            Options(headers: {HttpHeaders.contentTypeHeader: jsonDataHeader}),
        data: jsonEncode(courseCreate),
      );
      return CourseResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return CourseResponse.fromError(error);
    }
  }

  Future<bool> createCourseEnrollment(
      CourseEnrollmentRequest courseEnrollmentRequest) async {
    try {
      Response response = await _dio.post(_endpoint + "enroll",
          options:
              Options(headers: {HttpHeaders.contentTypeHeader: jsonDataHeader}),
          data: jsonEncode(courseEnrollmentRequest));
      return response.data;
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return false;
    }
  }

  Future<bool> updateCourse(CourseResponse course) async {
    try {
      Response response = await _dio.put(_endpoint,
          options:
              Options(headers: {HttpHeaders.contentTypeHeader: jsonDataHeader}),
          data: jsonEncode(course));
      return response.data;
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return false;
    }
  }

  Future<bool> shareCourse(bool flag, ShareCourse shareCourse) async {
    try {
      Response response = await _dio.put(_endpoint + "share/" + flag.toString(),
          options:
              Options(headers: {HttpHeaders.contentTypeHeader: jsonDataHeader}),
          data: jsonEncode(shareCourse));
      return response.data;
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return false;
    }
  }

  Future<bool> addOwnersToCourse(
      String courseId, String ownerId, List<String> ownersToAdd) async {
    try {
      Response response = await _dio.put(
          _endpoint + "add/owner/" + courseId + ownerId,
          options:
              Options(headers: {HttpHeaders.contentTypeHeader: jsonDataHeader}),
          data: jsonEncode(ownersToAdd));
      return response.data;
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return false;
    }
  }

  Future<bool> addMembersToCourse(
      String courseId, String ownerId, List<String> membersToAdd) async {
    try {
      Response response = await _dio.put(
          _endpoint + "add/member/" + courseId + ownerId,
          options:
              Options(headers: {HttpHeaders.contentTypeHeader: jsonDataHeader}),
          data: jsonEncode(membersToAdd));
      return response.data;
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return false;
    }
  }

  Future<bool> addChapterToCourse(
      String courseId, String ownerId, ChapterCreate chapterCreate) async {
    try {
      Response response = await _dio.put(
          _endpoint + "add/chapter/" + courseId + ownerId,
          options:
              Options(headers: {HttpHeaders.contentTypeHeader: jsonDataHeader}),
          data: jsonEncode(chapterCreate));
      return response.data;
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return false;
    }
  }

  Future<bool> addLectureToChapter(String courseId, String chapterId,
      String ownerId, Lecture lecture) async {
    try {
      Response response = await _dio.put(_endpoint,
          options:
              Options(headers: {HttpHeaders.contentTypeHeader: jsonDataHeader}),
          data: jsonEncode(lecture));
      return response.data;
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return false;
    }
  }

  Future<bool> deleteCourse(ShareCourse shareCourse) async {
    try {
      Response response = await _dio.delete(_endpoint,
          options:
              Options(headers: {HttpHeaders.contentTypeHeader: jsonDataHeader}),
          data: jsonEncode(shareCourse));
      return response.data;
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return false;
    }
  }
}
