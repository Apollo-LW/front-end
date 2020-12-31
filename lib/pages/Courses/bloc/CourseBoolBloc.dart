import 'package:Apollo/pages/Courses/models/ChapterCreate.dart';
import 'package:Apollo/pages/Courses/models/CourseEnrollmentRequest.dart';
import 'package:Apollo/pages/Courses/models/CourseResponse.dart';
import 'package:Apollo/pages/Courses/models/Lecture.dart';
import 'package:Apollo/pages/Courses/models/ShareCourse.dart';
import 'package:Apollo/pages/Courses/service/CourseService.dart';
import 'package:rxdart/rxdart.dart';

class CourseBoolBloc {
  final CourseService _courseService = CourseService();
  final BehaviorSubject<bool> _courseBoolSubject = BehaviorSubject<bool>();

  createCourseEnrollment(
      CourseEnrollmentRequest courseEnrollmentRequest) async {
    bool event =
        await _courseService.createCourseEnrollment(courseEnrollmentRequest);
    _courseBoolSubject.sink.add(event);
  }

  updateCourse(CourseResponse courseResponse) async {
    bool event = await _courseService.updateCourse(courseResponse);
    _courseBoolSubject.sink.add(event);
  }

  shareCourse(bool flag, ShareCourse shareCourse) async {
    bool event = await _courseService.shareCourse(flag, shareCourse);
    _courseBoolSubject.sink.add(event);
  }

  addOwnerToCourse(
      String courseId, String ownerId, List<String> ownersToAdd) async {
    bool event =
        await _courseService.addOwnersToCourse(courseId, ownerId, ownersToAdd);
    _courseBoolSubject.sink.add(event);
  }

  addMembersToCourse(
      String courseId, String ownerId, List<String> membersToAdd) async {
    bool event = await _courseService.addMembersToCourse(
        courseId, ownerId, membersToAdd);
    _courseBoolSubject.sink.add(event);
  }

  addChapterToCourse(
      String courseId, String ownerId, ChapterCreate chapterCreate) async {
    bool event = await _courseService.addChapterToCourse(
        courseId, ownerId, chapterCreate);
    _courseBoolSubject.sink.add(event);
  }

  addLectureToChapter(String courseId, String chapterId, String ownerId,
      Lecture lecture) async {
    bool event = await _courseService.addLectureToChapter(
        (courseId), chapterId, ownerId, lecture);
    _courseBoolSubject.sink.add(event);
  }

  deleteCourse(ShareCourse shareCourse) async {
    bool event = await _courseService.deleteCourse(shareCourse);
    _courseBoolSubject.sink.add(event);
  }

  dispose() {
    _courseBoolSubject.close();
  }

  BehaviorSubject<bool> get subject => _courseBoolSubject;
}

final CourseBoolBloc courseBoolBloc = CourseBoolBloc();
