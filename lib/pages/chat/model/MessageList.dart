import 'package:Apollo/pages/chat/model/MessageResponse.dart';

class MessageList {
  final List<MessageResponse> messageResponses;
  final error;

  MessageList({this.error, this.messageResponses});

  MessageList.fromJson(Map<String, dynamic> json)
      : messageResponses =
            (json as List).map((e) => new MessageResponse.fromJson(e)).toList(),
        error = "";

  MessageList.fromError(dynamic errorValue)
      : messageResponses = List(),
        error = errorValue.toString();
}
