import 'package:Apollo/pages/chat/model/RoomCreate.dart';
import 'package:Apollo/pages/chat/model/RoomResponse.dart';
import 'package:Apollo/pages/chat/service/ChatService.dart';
import 'package:rxdart/rxdart.dart';

class RoomResponseBloc {
  final ChatService _chatService = ChatService();
  final BehaviorSubject<RoomResponse> _behaviorSubject =
      BehaviorSubject<RoomResponse>();

  getRoomById(String roomId) async {
    RoomResponse event = await _chatService.getRoomById(roomId);
    _behaviorSubject.sink.add(event);
  }

  createRoom(RoomCreate roomCreate) async {
    RoomResponse event = await _chatService.createRoom(roomCreate);
    _behaviorSubject.sink.add(event);
  }

  dispose() {
    _behaviorSubject.close();
  }

  BehaviorSubject<RoomResponse> get subject => _behaviorSubject;
}

final RoomResponseBloc chatBoolBloc = RoomResponseBloc();
