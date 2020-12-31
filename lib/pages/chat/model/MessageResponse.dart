class MessageResponse {
  final String messageId,
      messageSendAt,
      messageParentId,
      messageSenderId,
      messageRoomId,
      messageText,
      error;

  MessageResponse(
      {this.messageId,
      this.messageParentId,
      this.messageRoomId,
      this.messageSendAt,
      this.messageSenderId,
      this.messageText,
      this.error});

  factory MessageResponse.fromJson(Map<String, dynamic> json) {
    return MessageResponse(
        error: "",
        messageId: json['messageId'],
        messageParentId: json['messageParentId'],
        messageRoomId: json['messageRoomId'],
        messageSendAt: json['messageSendAt'],
        messageSenderId: json['messageSenderId'],
        messageText: json['messageText']);
  }

  factory MessageResponse.fromError(dynamic errorValue) {
    return MessageResponse(
        error: errorValue.toString(),
        messageText: "",
        messageSenderId: "",
        messageSendAt: "",
        messageRoomId: "",
        messageParentId: "",
        messageId: "");
  }
}
