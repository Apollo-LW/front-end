import 'package:Apollo/pages/profile/model/UserResponse.dart';
import 'package:Apollo/pages/profile/service/ProfileService.dart';
import 'package:rxdart/rxdart.dart';

class ProfileBloc {
  final ProfileService _profileService = ProfileService();
  final BehaviorSubject<UserResponse> _userBehaviorSubject =
      BehaviorSubject<UserResponse>();

  getUserById(String userId) async {
    UserResponse event = await _profileService.getUserById(userId);
    _userBehaviorSubject.sink.add(event);
  }

  dispose() {
    _userBehaviorSubject.close();
  }

  BehaviorSubject<UserResponse> get subject => _userBehaviorSubject;
}

final ProfileBloc profileBloc = ProfileBloc();
