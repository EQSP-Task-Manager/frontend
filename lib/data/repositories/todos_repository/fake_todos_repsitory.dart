// Fake class
import 'dart:async';
import 'dart:math';

import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import '../../../domain/domain.dart';
import '../../data.dart';

@Singleton(
  as: TodosRepository,
  order: -1,
  env: [Environment.test],
)
class FakeTodosRepsitoryImpl implements TodosRepository {
  late List<Todo> todos;

  FakeTodosRepsitoryImpl() {
    DateTime now = DateTime.now();
    Uuid uuid = const Uuid();
    Random random = Random();

    todos = List<Todo>.generate(30, (index) {
      return Todo(
        id: uuid.v4(),
        title: String.fromCharCodes(
            List.generate(15, (index) => random.nextInt(33) + 89)),
        description: String.fromCharCodes(
            List.generate(15, (index) => random.nextInt(33) + 89)),
        importance: Importance.basic,
        deadline: null,
        done: false,
        color: null,
        createdAt: now.toUtc().millisecondsSinceEpoch ~/ 1000,
        changedAt: now.toUtc().millisecondsSinceEpoch ~/ 1000,
        tags: [Tag.home],
      );
    });
  }

  @override
  FutureOr<void> addTodos(List<Todo> todos) {
    this.todos.addAll(todos);
  }

  @override
  FutureOr<void> editTodo(Todo todo, {bool setDone = false}) {
    int idxToEdit = todos.indexWhere((element) => todo.id == element.id);
    todos[idxToEdit] = todo;
  }

  @override
  FutureOr<Todo?> getTodo(String uid) {
    int idxToReturn = todos.indexWhere((element) => uid == element.id);
    if (idxToReturn != -1) {
      return todos[idxToReturn];
    }
    return null;
  }

  @override
  FutureOr<List<Todo>> getTodosList() {
    return todos;
  }

  @override
  FutureOr<void> removeTodo(String id) {
    todos.removeWhere((element) => element.id == id);
  }

  @override
  FutureOr<void> updateList(List<Todo> todos) {
    this.todos = todos;
  }
}
