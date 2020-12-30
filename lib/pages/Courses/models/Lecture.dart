class Lecture {
  final String lectureId, ownerId, error;
  final bool isPublic, isActive;
  final List<dynamic> lectureResources;

  Lecture(
      {this.lectureId,
      this.ownerId,
      this.isPublic,
      this.isActive,
      this.lectureResources,
      this.error});

  factory Lecture.fromJson(Map<String, dynamic> json) {
    return Lecture(
        lectureId: json['lectureId'],
        ownerId: json['ownerId'],
        isPublic: json['isPublic'],
        isActive: json['isActive'],
        lectureResources: json['lectureResources'],
        error: "");
  }

  factory Lecture.fromError(String errorValue) {
    return Lecture(
        lectureId: "",
        isActive: false,
        isPublic: false,
        lectureResources: null,
        ownerId: "",
        error: errorValue);
  }
}
