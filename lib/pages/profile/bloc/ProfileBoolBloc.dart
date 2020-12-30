import 'package:Apollo/pages/profile/model/UserUpdate.dart';
import 'package:Apollo/pages/profile/service/ProfileService.dart';
import 'package:rxdart/rxdart.dart';

class ProfileBoolBloc {
  final ProfileService _profileService = ProfileService();
  final BehaviorSubject<bool> _behaviorSubject = BehaviorSubject<bool>();

  updateUser(UserUpdate userUpdate) async {
    bool event = await _profileService.updateUser(userUpdate);
    _behaviorSubject.sink.add(event);
  }

  deleteUser(String userId) async {
    bool event = await _profileService.deleteUser(userId);
    _behaviorSubject.sink.add(event);
  }

  dispose() {
    _behaviorSubject.close();
  }

  BehaviorSubject<bool> get subject => _behaviorSubject;
}

final ProfileBoolBloc profileBoolBloc = ProfileBoolBloc();
