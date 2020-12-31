import 'package:Apollo/pages/chat/model/MessageCreate.dart';
import 'package:Apollo/pages/chat/model/RoomCreate.dart';
import 'package:Apollo/pages/chat/service/ChatService.dart';
import 'package:rxdart/rxdart.dart';

class ChatBoolBloc {
  final ChatService _chatService = ChatService();
  final BehaviorSubject<bool> _behaviorSubject = BehaviorSubject<bool>();

  sendMessage(MessageCreate messageCreate) async {
    bool event = await _chatService.sendMessage(messageCreate);
    _behaviorSubject.sink.add(event);
  }

  updateRoom(RoomCreate roomCreate) async {
    bool event = await _chatService.updateRoom(roomCreate);
    _behaviorSubject.sink.add(event);
  }

  deleteRoom(String roomId) async {
    bool event = await _chatService.deleteRoom(roomId);
    _behaviorSubject.sink.add(event);
  }

  dispose() {
    _behaviorSubject.close();
  }

  BehaviorSubject<bool> get subject => _behaviorSubject;
}

final ChatBoolBloc chatBoolBloc = ChatBoolBloc();
