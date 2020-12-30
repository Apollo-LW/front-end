import 'package:Apollo/pages/Courses/models/InstitutionCreate.dart';
import 'package:Apollo/pages/institution/model/InstitutionCourse.dart';
import 'package:Apollo/pages/institution/service/InstitutionService.dart';
import 'package:rxdart/rxdart.dart';

class InstitutionBoolBloc {
  final InstitutionService _institutionService = InstitutionService();
  final BehaviorSubject<bool> _boolBehaviorSubject = BehaviorSubject<bool>();

  endorseCourse(String adminId, InstitutionCourse institutionCourse) async {
    bool event =
        await _institutionService.endorseCourse(adminId, institutionCourse);
    _boolBehaviorSubject.sink.add(event);
  }

  updateInstitution(String adminId, InstitutionCreate institutionCreate) async {
    bool event =
        await _institutionService.updateInstitution(adminId, institutionCreate);
    _boolBehaviorSubject.sink.add(event);
  }

  addMembers(
      String adminId, String institutionId, List<String> membersToAdd) async {
    bool event = await _institutionService.addMembers(
        adminId, institutionId, membersToAdd);
    _boolBehaviorSubject.sink.add(event);
  }

  addAdmins(
      String adminId, String institutionId, List<String> adminsToAdd) async {
    bool event = await _institutionService.addAdmins(
        adminId, institutionId, adminsToAdd);
    _boolBehaviorSubject.sink.add(event);
  }

  deleteInstitution(String adminId, String institutionId) async {
    bool event =
        await _institutionService.deleteInstitution(adminId, institutionId);
    _boolBehaviorSubject.sink.add(event);
  }

  dispose() {
    _boolBehaviorSubject.close();
  }

  BehaviorSubject<bool> get subject => _boolBehaviorSubject;
}

final InstitutionBoolBloc _institutionBoolBloc = InstitutionBoolBloc();
