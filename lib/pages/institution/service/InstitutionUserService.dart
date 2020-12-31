import 'package:Apollo/pages/institution/model/UserInstitution.dart';
import 'package:dio/dio.dart';

class InstitutionUserService {
  final String jsonDataHeader = "application/json";
  final String _endpoint = "http://192.168.100.49:8081/institution/user";
  final Dio _dio = Dio();

  Future<UserInstitution> getUserInstitution(String userId) async {
    try {
      Response response = await _dio.get(_endpoint + userId);
      return UserInstitution.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return UserInstitution.fromError(error);
    }
  }
}
