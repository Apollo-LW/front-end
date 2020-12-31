import 'dart:convert';
import 'dart:io';

import 'package:Apollo/pages/chat/model/MessageCreate.dart';
import 'package:Apollo/pages/chat/model/MessageList.dart';
import 'package:Apollo/pages/chat/model/RoomCreate.dart';
import 'package:Apollo/pages/chat/model/RoomList.dart';
import 'package:Apollo/pages/chat/model/RoomResponse.dart';
import 'package:dio/dio.dart';

class ChatService {
  final String jsonDataHeader = "application/json";
  final String _endpoint = "http://192.168.100.49:8083/chat/";
  final String _room = "room/";
  final Dio _dio = Dio();

  Future<MessageList> getRoomMessages(String roomId) async {
    try {
      Response response = await _dio.get(_endpoint + roomId);
      return MessageList.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return MessageList.fromError(error);
    }
  }

  Future<bool> sendMessage(MessageCreate messageCreate) async {
    try {
      Response response = await _dio.post(_endpoint,
          options:
              Options(headers: {HttpHeaders.contentTypeHeader: jsonDataHeader}),
          data: jsonEncode(messageCreate));
      return response.data;
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return false;
    }
  }

  Future<RoomResponse> getRoomById(String roomId) async {
    try {
      Response response = await _dio.get(_endpoint + _room + roomId);
      return RoomResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return RoomResponse.fromError(error);
    }
  }

  Future<RoomResponse> createRoom(RoomCreate roomCreate) async {
    try {
      Response response = await _dio.post(_endpoint + _room,
          options:
              Options(headers: {HttpHeaders.contentTypeHeader: jsonDataHeader}),
          data: jsonEncode(roomCreate));
      return RoomResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return RoomResponse.fromError(error);
    }
  }

  Future<bool> updateRoom(RoomCreate roomCreate) async {
    try {
      Response response = await _dio.put(_endpoint + _room,
          options:
              Options(headers: {HttpHeaders.contentTypeHeader: jsonDataHeader}),
          data: jsonEncode(roomCreate));
      return response.data;
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return false;
    }
  }

  Future<bool> deleteRoom(String roomId) async {
    try {
      Response response = await _dio.delete(_endpoint + _room + roomId);
      return response.data;
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return false;
    }
  }

  Future<RoomList> getUserRooms(String userId) async {
    try {
      Response response = await _dio.get(_endpoint + "user/" + userId);
      return RoomList.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return RoomList.fromError(error);
    }
  }
}
