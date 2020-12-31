import 'package:Apollo/pages/chat/model/MessageList.dart';
import 'package:Apollo/pages/chat/service/ChatService.dart';
import 'package:rxdart/rxdart.dart';

class MessageListBloc {
  final ChatService _chatService = ChatService();
  final BehaviorSubject<MessageList> _behaviorSubject =
      BehaviorSubject<MessageList>();

  getRoomMessages(String roomId) async {
    MessageList event = await _chatService.getRoomMessages(roomId);
    _behaviorSubject.sink.add(event);
  }

  dispose() {
    _behaviorSubject.close();
  }

  BehaviorSubject<MessageList> get subject => _behaviorSubject;
}

final MessageListBloc chatBoolBloc = MessageListBloc();
