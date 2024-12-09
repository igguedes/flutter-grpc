import 'package:flutter_grpc/models/todo.model.dart';
import 'package:flutter_grpc/repositories/grpc/todo_grpc.repository.dart';
import 'package:flutter_grpc/repositories/interfaces/Itodo_repositoy.dart';

class TodoStore {
  ItodoRepositoy repositoy = new TodoGrpcRepository();

  List<ToDoModel> _data = [];

  Future<void> addTodo(String title) async {
    await repositoy.addTodo(
        ToDoModel(id: _data.length + 1, title: title, completed: false));
  }

  Future<List<ToDoModel>> getAllTodos() async {
    _data = await repositoy.getTodos();
    return _data;
  }

  Future<void> completeTodo(int todoId) async {
    await repositoy.completeTodo(todoId);
  }

  Future<void> removeTodo(int todoId) async {
    await repositoy.removeTodo(todoId);
  }
}
