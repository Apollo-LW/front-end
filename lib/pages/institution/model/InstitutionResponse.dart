class InstitutionResponse {
  final bool isActive, isPublic;
  final String institutionId, institutionName, institutionDateOfCreation, error;
  final List<dynamic> institutionCourses,
      institutionAdmins,
      institutionParents,
      institutionMembers,
      institutionChildren;

  InstitutionResponse(
      {this.isActive,
      this.isPublic,
      this.institutionId,
      this.institutionAdmins,
      this.institutionChildren,
      this.institutionCourses,
      this.institutionDateOfCreation,
      this.institutionMembers,
      this.institutionName,
      this.error,
      this.institutionParents});

  factory InstitutionResponse.fromJson(Map<String, dynamic> json) {
    return InstitutionResponse(
        isActive: json['isActive'],
        isPublic: json['isPublic'],
        institutionAdmins: json['institutionAdmins'],
        institutionChildren: json['institutionChildren'],
        institutionCourses: json['institutionCourse'],
        institutionDateOfCreation: json['institutionDateOfCreation'],
        institutionId: json['institutionId'],
        institutionMembers: json['institutionMembers'],
        institutionName: json['institutionName'],
        error: "",
        institutionParents: json['institutionParents']);
  }

  factory InstitutionResponse.fromError(dynamic errorValue) {
    return InstitutionResponse(
        institutionParents: null,
        institutionName: "",
        institutionMembers: null,
        institutionId: "",
        institutionDateOfCreation: "",
        institutionCourses: null,
        institutionChildren: null,
        institutionAdmins: null,
        isPublic: false,
        isActive: false,
        error: errorValue.toString());
  }
}
