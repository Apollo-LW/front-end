import 'package:Apollo/pages/Courses/models/Chapter.dart';
import 'package:Apollo/pages/Courses/service/CourseService.dart';
import 'package:rxdart/rxdart.dart';

class ChapterBloc {
  final CourseService _courseService = CourseService();
  final BehaviorSubject<Chapter> _chapterBehaviorSubject =
      BehaviorSubject<Chapter>();

  getCourseChapter(String courseId) async {
    Chapter event = await _courseService.getCourseChapter(courseId);
    _chapterBehaviorSubject.sink.add(event);
  }

  dispose() {
    _chapterBehaviorSubject.close();
  }

  BehaviorSubject<Chapter> get subject => _chapterBehaviorSubject;
}

final ChapterBloc _chapterBloc = ChapterBloc();
