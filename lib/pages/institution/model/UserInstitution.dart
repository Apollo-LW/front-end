class UserInstitution {
  String error;
  List<dynamic> userInstitutions;

  UserInstitution({this.error, this.userInstitutions});

  factory UserInstitution.fromJson(List<dynamic> json) {
    return UserInstitution(userInstitutions: json, error: "");
  }

  factory UserInstitution.fromError(String errorValue) {
    return UserInstitution(error: errorValue, userInstitutions: null);
  }
}
