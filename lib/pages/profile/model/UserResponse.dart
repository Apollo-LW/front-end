class UserResponse {
  final String userId,
      authTime,
      birthDate,
      givenName,
      familyName,
      username,
      email,
      imageUrl,
      gender,
      userType,
      error;
  final bool isActive;

  UserResponse(
      {this.userId,
      this.isActive,
      this.authTime,
      this.birthDate,
      this.email,
      this.familyName,
      this.gender,
      this.givenName,
      this.imageUrl,
      this.username,
      this.userType,
      this.error});

  factory UserResponse.fromJson(Map<String, dynamic> json) {
    return UserResponse(
        userId: json['userId'],
        isActive: json['isActive'],
        authTime: json['authTime'],
        birthDate: json['birthDate'],
        email: json['email'],
        familyName: json['familyName'],
        gender: json['gender'],
        givenName: json['givenName'],
        imageUrl: json['imageUrl'],
        username: json['username'],
        userType: json['userType'],
        error: "");
  }

  factory UserResponse.fromError(dynamic errorValue) {
    return UserResponse(
        error: errorValue.toString(),
        userType: "",
        username: "",
        imageUrl: "",
        givenName: "",
        gender: "",
        familyName: "",
        email: "",
        birthDate: "",
        authTime: "",
        isActive: false,
        userId: "");
  }
}
