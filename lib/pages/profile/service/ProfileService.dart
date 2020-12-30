import 'dart:convert';
import 'dart:io';

import 'package:Apollo/pages/profile/model/UserResponse.dart';
import 'package:Apollo/pages/profile/model/UserUpdate.dart';
import 'package:dio/dio.dart';

class ProfileService {
  final String _endpoint = "http://192.168.100.49:8080/user/";
  final String jsonDataHeader = "application/json";
  final Dio _dio = Dio();

  Future<List<String>> getGenders() async {
    try {
      Response response = await _dio.get(_endpoint + "gender");
      return response.data;
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return ["MALE", "FEMALE"];
    }
  }

  Future<List<String>> getUserTypes() async {
    try {
      Response response = await _dio.get(_endpoint + "types");
      return response.data;
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return ["USER", "TEACHER", "STUDENT"];
    }
  }

  Future<UserResponse> getUserById(String userId) async {
    try {
      Response response = await _dio.get(_endpoint + userId);
      return UserResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return UserResponse.fromError(error);
    }
  }

  Future<String> getUserFullNameById(String userId) async {
    try {
      Response response = await _dio.get(_endpoint + "name/" + userId);
      return response.data;
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return "Sorry, something wrong has happened";
    }
  }

  Future<bool> updateUser(UserUpdate userUpdate) async {
    try {
      Response response = await _dio.put(_endpoint,
          options:
              Options(headers: {HttpHeaders.contentTypeHeader: jsonDataHeader}),
          data: jsonEncode(userUpdate));
      return response.data;
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return false;
    }
  }

  Future<bool> deleteUser(String userId) async {
    try {
      Response response = await _dio.delete(_endpoint + userId);
      return response.data;
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return false;
    }
  }
}
