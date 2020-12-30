class CourseUserResponse {
  final String error;
  final List<dynamic> userCourses;

  CourseUserResponse({this.userCourses, this.error});

  factory CourseUserResponse.fromJson(Map<String, dynamic> json) {
    return CourseUserResponse(userCourses: json['userCourses'], error: "");
  }

  factory CourseUserResponse.fromError(String errorValue) {
    return CourseUserResponse(userCourses: null, error: errorValue);
  }
}
