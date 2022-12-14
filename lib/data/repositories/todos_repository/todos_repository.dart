import 'package:dio/dio.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';

import 'package:done/data/data.dart';
import 'package:done/domain/domain.dart';
import 'package:injectable/injectable.dart';

import '../../../application/application.dart';

export 'todos_repository_interface.dart';
export 'fake_todos_repsitory.dart';
export 'todos_local_repository.dart';
export 'todos_remote_repository.dart';

@Singleton(
  as: TodosRepository,
  order: -1,
  env: [Environment.prod],
)
class TodosRepositoryImpl implements TodosRepository {
  final TodosLocalRepository localRepository = TodosLocalRepository();
  final TodosRemoteRepository remoteRepository = TodosRemoteRepository();

  List<Todo> get localTodos => localRepository.getTodosList();
  int get lastRevision => remoteRepository.lastRevision;

  bool get isLoggedIn => getIt.get<AuthRepository>().isLoggedIn;

  void debugPrintOnError(e) {
    if (e is DioError) {
      debugPrint(e.message);
    }
  }

  @override
  Future<void> updateList(List<Todo> todos) async {
    try {
      localRepository.updateList(todos);
      if (isLoggedIn) await remoteRepository.updateList(todos);
    } catch (e) {
      debugPrintOnError(e);
    }
  }

  @override
  Future<void> addTodos(List<Todo> todos) async {
    try {
      localRepository.addTodos(todos);
      if (isLoggedIn) await remoteRepository.addTodos(todos);
    } catch (e) {
      debugPrintOnError(e);
    }
    FirebaseAnalytics.instance.logEvent(name: 'add');
  }

  @override
  Future<void> editTodo(Todo todo, {bool setDone = false}) async {
    try {
      localRepository.editTodo(todo);
      if (isLoggedIn) await remoteRepository.editTodo(todo);
    } catch (e) {
      debugPrintOnError(e);
    }

    if (setDone) {
      FirebaseAnalytics.instance.logEvent(name: 'done');
    }
  }

  @override
  Future<List<Todo>> getTodosList() async {
    if (isLoggedIn) {
      try {
        var oldLastRevision = lastRevision;
        var todos = await remoteRepository.getTodosList();
        if (lastRevision > oldLastRevision) {
          localRepository.updateList(todos);
        } else {
          remoteRepository.updateList(localRepository.getTodosList());
        }
      } catch (e) {
        debugPrintOnError(e);
      }
    }

    return localRepository.getTodosList();
  }

  @override
  Future<void> removeTodo(String id) async {
    try {
      localRepository.removeTodo(id);
      if (isLoggedIn) await remoteRepository.removeTodo(id);
    } catch (e) {
      debugPrintOnError(e);
    }
    FirebaseAnalytics.instance.logEvent(name: 'remove');
  }

  @override
  Future<Todo?> getTodo(String id) async {
    if (isLoggedIn) {
      try {
        var oldLastRevision = lastRevision;
        var remoteTodo = await remoteRepository.getTodo(id);
        var localTodo = localRepository.getTodo(id);

        if (remoteTodo != null) {
          if (lastRevision > oldLastRevision) {
            localRepository.editTodo(remoteTodo);
          } else {
            if (localTodo != null) {
              remoteRepository.editTodo(localTodo);
            }
          }
        }
      } catch (e) {
        debugPrintOnError(e);
      }
    }

    return localRepository.getTodo(id);
  }
}
