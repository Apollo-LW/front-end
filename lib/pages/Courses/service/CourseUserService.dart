import 'package:Apollo/pages/Courses/models/CourseUserResponse.dart';
import 'package:dio/dio.dart';

class CourseUserService {
  final String jsonDataHeader = "application/json";
  final String _endpoint = "http://192.168.100.49:8081/course/user/";
  final Dio _dio = Dio();

  Future<CourseUserResponse> getUserCoursesByUserId(String userId) async {
    try {
      Response response = await _dio.get(_endpoint + userId);
      return CourseUserResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return CourseUserResponse.fromError(error);
    }
  }
}
