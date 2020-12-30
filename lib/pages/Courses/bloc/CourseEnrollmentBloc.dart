import 'package:Apollo/pages/Courses/models/CourseEnrollment.dart';
import 'package:Apollo/pages/Courses/service/CourseService.dart';
import 'package:rxdart/rxdart.dart';

class CourseEnrollmentBloc {
  final CourseService _courseService = CourseService();
  final BehaviorSubject<CourseEnrollment> _courseEnrollmentSubject =
      BehaviorSubject<CourseEnrollment>();

  getCourseEnrollment(String courseId) async {
    CourseEnrollment event = await _courseService.getCourseEnrollment(courseId);
    _courseEnrollmentSubject.sink.add(event);
  }

  dispose() {
    _courseEnrollmentSubject.close();
  }

  BehaviorSubject<CourseEnrollment> get subject => _courseEnrollmentSubject;
}

final CourseEnrollmentBloc _courseEnrollmentBloc = CourseEnrollmentBloc();
