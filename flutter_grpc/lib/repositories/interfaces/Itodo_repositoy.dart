import 'package:flutter_grpc/models/todo.model.dart';

abstract interface class ItodoRepositoy {
  Future<List<ToDoModel>> getTodos();
  Future<void> addTodo(ToDoModel todo);
  Future<void> removeTodo(int todoId);
  Future<void> completeTodo(int todoId);
}
