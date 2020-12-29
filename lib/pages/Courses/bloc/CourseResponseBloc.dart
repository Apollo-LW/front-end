import 'package:Apollo/pages/Courses/models/CourseCreate.dart';
import 'package:Apollo/pages/Courses/models/CourseResponse.dart';
import 'package:Apollo/pages/Courses/service/CourseService.dart';
import 'package:rxdart/rxdart.dart';

class CourseResponseBloc {
  final CourseService _courseService = CourseService();
  final BehaviorSubject<CourseResponse> _courseResponseSubject =
      BehaviorSubject<CourseResponse>();

  getCourse(String courseId) async {
    CourseResponse courseResponse =
        await _courseService.getCourseById(courseId);
    _courseResponseSubject.sink.add(courseResponse);
  }

  createCourse(CourseCreate courseCreate) async {
    CourseResponse courseResponse =
        await _courseService.createCourse(courseCreate);
    _courseResponseSubject.sink.add(courseResponse);
  }

  dispose() {
    _courseResponseSubject.close();
  }

  BehaviorSubject<CourseResponse> get subject => _courseResponseSubject;
}

final courseResponseBloc = CourseResponseBloc();
