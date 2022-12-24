import 'package:hive_flutter/hive_flutter.dart';

import 'package:done/data/data.dart';
import 'package:done/domain/domain.dart';

const _todosStr = 'todos';

class TodosLocalRepository implements TodosRepository {
  final _todosBox = Hive.box<Todo>(_todosStr);

  @override
  void addTodos(List<Todo> todos) {
    for (var e in todos) {
      _todosBox.put(e.id, e);
    }
  }

  @override
  void editTodo(Todo todo, {bool setDone = false}) {
    _todosBox.put(todo.id, todo);
  }

  @override
  Todo? getTodo(String id) {
    return _todosBox.get(id);
  }

  @override
  List<Todo> getTodosList() {
    return _todosBox.values.toList();
  }

  @override
  void removeTodo(String id) {
    _todosBox.delete(id);
  }

  @override
  void updateList(List<Todo> todos) {
    _todosBox.clear();
    for (var todo in todos) {
      _todosBox.put(todo.id, todo);
    }
  }
}
