import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import '../../application/application.dart';
import '../../domain/domain.dart';
import '../models/models.dart';

const _baseUrl = 'http://158.160.22.123:8080/api';
const _user = "user";

@Singleton(env: [Environment.prod])
class TodosApi {
  final _userBox = Hive.box<User>(_user);

  final String? deviceId;
  TodosApi(this.deviceId);

  @factoryMethod
  static Future<TodosApi> create() async {
    var deviceId = await getDeviceId() ?? '';
    return TodosApi(deviceId);
  }

  late final Dio dio = Dio(
    BaseOptions(baseUrl: _baseUrl, headers: {
      'Authorization': 'OAuth ${_userBox.values.first.oauthToken}',
      'X-Device-id': deviceId,
    }),
  );

  Future<Response> getList() async {
    return dio.get('/tasks');
  }

  Future<Response> updateList({
    required ListTransaction listRequest,
  }) async {
    return dio.patch(
      '/tasks',
      data: jsonEncode(listRequest),
    );
  }

  Future<Response> addTodo({
    required ListTransaction listRequest,
  }) async {
    return dio.post(
      '/tasks',
      data: jsonEncode(listRequest),
    );
  }

  Future<Response> getTodo({
    required String id,
  }) async {
    return dio.get(
      '/tasks/$id',
    );
  }

  Future<Response> removeTodo({
    required String id,
  }) async {
    return dio.delete(
      '/tasks/$id',
    );
  }

  Future<Response> editTodo({
    required ElementTransaction elementRequest,
  }) async {
    return dio.put(
      '/tasks',
      data: jsonEncode(elementRequest),
    );
  }
}

@Singleton(env: [Environment.test])
class FakeTodosApi implements TodosApi {
  @override
  Box<User> get _userBox => throw UnimplementedError();

  @override
  Future<Response> addTodo({required ListTransaction listRequest}) {
    throw UnimplementedError();
  }

  @override
  String? get deviceId => null;

  @override
  Dio get dio => throw UnimplementedError();

  @override
  Future<Response> editTodo({required ElementTransaction elementRequest}) {
    throw UnimplementedError();
  }

  @override
  Future<Response> getList() {
    throw UnimplementedError();
  }

  @override
  Future<Response> getTodo({required String id}) {
    throw UnimplementedError();
  }

  @override
  Future<Response> removeTodo({required String id}) {
    throw UnimplementedError();
  }

  @override
  Future<Response> updateList({required ListTransaction listRequest}) {
    throw UnimplementedError();
  }
}
