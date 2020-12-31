import 'dart:convert';
import 'dart:io';

import 'package:Apollo/pages/Courses/models/InstitutionCreate.dart';
import 'package:Apollo/pages/institution/model/InstitutionCourse.dart';
import 'package:Apollo/pages/institution/model/InstitutionResponse.dart';
import 'package:dio/dio.dart';

class InstitutionService {
  final String jsonDataHeader = "application/json";
  final String _endpoint = "";
  final Dio _dio = Dio();

  Future<InstitutionResponse> getInstitutionById(String institutionId) async {
    try {
      Response response = await _dio.get(_endpoint + institutionId);
      return InstitutionResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return InstitutionResponse.fromError(error);
    }
  }

  Future<InstitutionResponse> createInstitution(
      InstitutionCreate institutionCreate) async {
    try {
      Response response = await _dio.post(
        _endpoint,
        options:
            Options(headers: {HttpHeaders.contentTypeHeader: jsonDataHeader}),
        data: jsonEncode(institutionCreate),
      );
      return InstitutionResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return InstitutionResponse.fromError(error);
    }
  }

  Future<bool> endorseCourse(
      String adminId, InstitutionCourse institutionCourse) async {
    try {
      Response response = await _dio.put(_endpoint + "endorse/" + adminId,
          options:
              Options(headers: {HttpHeaders.contentTypeHeader: jsonDataHeader}),
          data: jsonEncode(institutionCourse));
      return response.data;
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return false;
    }
  }

  Future<bool> updateInstitution(
      String adminId, InstitutionCreate institutionCreate) async {
    try {
      Response response = await _dio.put(_endpoint + adminId,
          options:
              Options(headers: {HttpHeaders.contentTypeHeader: jsonDataHeader}),
          data: jsonEncode(institutionCreate));
      return response.data;
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return false;
    }
  }

  Future<bool> addMembers(
      String adminId, String institutionId, List<String> membersToAdd) async {
    try {
      Response response = await _dio.put(
          _endpoint + "add/member/" + adminId + "/" + institutionId,
          options:
              Options(headers: {HttpHeaders.contentTypeHeader: jsonDataHeader}),
          data: membersToAdd);
      return response.data;
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return false;
    }
  }

  Future<bool> addAdmins(
      String adminId, String institutionId, List<String> adminsToAdd) async {
    try {
      Response response = await _dio.put(
          _endpoint + "add/admin/" + adminId + "/" + institutionId,
          options:
              Options(headers: {HttpHeaders.contentTypeHeader: jsonDataHeader}),
          data: adminsToAdd);
      return response.data;
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return false;
    }
  }

  Future<bool> deleteInstitution(String adminId, String institutionId) async {
    try {
      Response response =
          await _dio.delete(_endpoint + adminId + "/" + institutionId);
      return response.data;
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return false;
    }
  }
}
