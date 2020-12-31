import 'package:Apollo/pages/chat/model/RoomResponse.dart';

class RoomList {
  final List<RoomResponse> roomResponse;
  final String error;

  RoomList({this.error, this.roomResponse});

  RoomList.fromJson(Map<String, dynamic> json)
      : roomResponse =
            (json as List).map((e) => RoomResponse.fromJson(e)).toList(),
        error = "";

  RoomList.fromError(dynamic errorValue)
      : roomResponse = List(),
        error = errorValue.toString();
}
