import 'package:Apollo/pages/profile/service/ProfileService.dart';
import 'package:rxdart/rxdart.dart';

class ProfileStringBloc {
  final ProfileService _profileService = ProfileService();
  final BehaviorSubject<String> _behaviorSubject = BehaviorSubject<String>();

  getUserFullName(String userId) async {
    String event = await _profileService.getUserFullNameById(userId);
    _behaviorSubject.sink.add(event);
  }

  dispose() {
    _behaviorSubject.close();
  }

  BehaviorSubject<String> get subject => _behaviorSubject;
}

final ProfileStringBloc profileStringBloc = ProfileStringBloc();
