import 'package:Apollo/pages/Courses/models/InstitutionCreate.dart';
import 'package:Apollo/pages/institution/model/InstitutionResponse.dart';
import 'package:Apollo/pages/institution/service/InstitutionService.dart';
import 'package:rxdart/rxdart.dart';

class InstitutionBloc {
  final InstitutionService _institutionService = InstitutionService();
  final BehaviorSubject<InstitutionResponse> _institutionBehaviorSubject =
      BehaviorSubject<InstitutionResponse>();

  getInstitutionById(String institutionId) async {
    InstitutionResponse event =
        await _institutionService.getInstitutionById(institutionId);
    _institutionBehaviorSubject.sink.add(event);
  }

  createInstitution(InstitutionCreate institutionCreate) async {
    InstitutionResponse event =
        await _institutionService.createInstitution(institutionCreate);
    _institutionBehaviorSubject.sink.add(event);
  }

  dispose() {
    _institutionBehaviorSubject.close();
  }

  BehaviorSubject<InstitutionResponse> get subject =>
      _institutionBehaviorSubject;
}

final InstitutionBloc _institutionBloc = InstitutionBloc();
