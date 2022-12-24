import 'dart:async';
import 'package:dio/dio.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:done/application/application.dart';
import 'package:done/data/data.dart';
import 'package:done/domain/domain.dart';

const _lastRevisionStr = 'lastRevision';
const _valueStr = 'value';

class TodosRemoteRepository implements TodosRepository {
  static final _lastRevisionBox = Hive.box<int>(_lastRevisionStr);
  int get lastRevision => _lastRevisionBox.get(_valueStr) ?? 0;

  static void _updateRevisionAfterElementResponse(Response response) {
    var elementResponse = ElementTransaction.fromJson(response.data);
    _lastRevisionBox.put(_valueStr, elementResponse.revision);
  }

  static void _updateRevisionAfterListResponse(Response response) {
    var elementResponse = ListTransaction.fromJson(response.data);
    _lastRevisionBox.put(_valueStr, elementResponse.revision);
  }

  @override
  FutureOr<void> addTodos(List<Todo> todos) async {
    var response = await getIt.get<TodosApi>().addTodo(
          listRequest: ListTransaction(
            list: todos,
            revision: lastRevision,
          ),
        );

    _updateRevisionAfterListResponse(response);
  }

  @override
  FutureOr<void> editTodo(Todo todo, {bool setDone = false}) async {
    var response = await getIt.get<TodosApi>().editTodo(
          elementRequest: ElementTransaction(
            element: todo,
            revision: lastRevision,
          ),
        );

    _updateRevisionAfterElementResponse(response);
  }

  @override
  FutureOr<List<Todo>> getTodosList() async {
    var rawResponse = await getIt.get<TodosApi>().getList();
    var listResponse = ListTransaction.fromJson(rawResponse.data);

    _updateRevisionAfterListResponse(rawResponse);

    return listResponse.list!;
  }

  @override
  FutureOr<void> removeTodo(String id) async {
    var response = await getIt.get<TodosApi>().removeTodo(id: id);

    _updateRevisionAfterElementResponse(response);
  }

  @override
  FutureOr<Todo?> getTodo(String id) async {
    var response = await getIt.get<TodosApi>().getTodo(id: id);

    _updateRevisionAfterElementResponse(response);
    return Todo.fromJson(response.data);
  }

  @override
  FutureOr<void> updateList(List<Todo> todos) async {
    var response = await getIt.get<TodosApi>().updateList(
          listRequest: ListTransaction(
            list: todos,
            revision: lastRevision,
          ),
        );

    _updateRevisionAfterListResponse(response);
  }
}
