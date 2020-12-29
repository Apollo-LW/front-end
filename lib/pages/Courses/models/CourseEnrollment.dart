class CourseEnrollment {
  final String error, courseId, userId, requestDateOfCreation, enrollmentType;

  CourseEnrollment(
      {this.courseId,
      this.userId,
      this.enrollmentType,
      this.requestDateOfCreation,
      this.error});

  factory CourseEnrollment.fromJson(Map<String, dynamic> json) {
    return CourseEnrollment(
        courseId: json['courseId'],
        userId: json['userId'],
        enrollmentType: json['enrollmentType'],
        requestDateOfCreation: json['enrollmentType'],
        error: "");
  }

  factory CourseEnrollment.fromError(String errorValue) {
    return CourseEnrollment(
        requestDateOfCreation: "",
        enrollmentType: "",
        userId: "",
        courseId: "",
        error: errorValue);
  }
}
