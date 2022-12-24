import 'dart:async';
import 'package:done/domain/domain.dart';

abstract class TodosRepository {
  FutureOr<List<Todo>> getTodosList();
  FutureOr<void> addTodos(List<Todo> todos);
  FutureOr<void> editTodo(Todo todo, {bool setDone = false});
  FutureOr<void> removeTodo(String id);
  FutureOr<void> updateList(List<Todo> todos);
  FutureOr<Todo?> getTodo(String uid);
}
