class RoomResponse {
  final String roomId, error;
  final bool isActive;
  final List<dynamic> roomAdmins, roomMembers, roomMessages;

  RoomResponse(
      {this.roomId,
      this.isActive,
      this.roomAdmins,
      this.roomMembers,
      this.roomMessages,
      this.error});

  factory RoomResponse.fromJson(Map<String, dynamic> json) {
    return RoomResponse(
        error: "",
        isActive: json['isActive'],
        roomAdmins: json['roomAdmins'],
        roomId: json['roomId'],
        roomMembers: json['roomMembers'],
        roomMessages: json['roomMessages']);
  }

  factory RoomResponse.fromError(dynamic errorValue) {
    return RoomResponse(
        error: errorValue.toString(),
        roomMessages: null,
        roomMembers: null,
        roomId: "",
        roomAdmins: null,
        isActive: false);
  }
}
