import 'package:Apollo/pages/chat/model/RoomList.dart';
import 'package:Apollo/pages/chat/service/ChatService.dart';
import 'package:rxdart/rxdart.dart';

class RoomListBloc {
  final ChatService _chatService = ChatService();
  final BehaviorSubject<RoomList> _behaviorSubject =
      BehaviorSubject<RoomList>();

  getUserRooms(String userId) async {
    RoomList event = await _chatService.getUserRooms(userId);
    _behaviorSubject.sink.add(event);
  }

  dispose() {
    _behaviorSubject.close();
  }

  BehaviorSubject<RoomList> get subject => _behaviorSubject;
}

final RoomListBloc chatBoolBloc = RoomListBloc();
