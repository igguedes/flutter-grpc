import 'package:flutter_grpc/models/todo.model.dart';
import 'package:flutter_grpc/repositories/interfaces/Itodo_repositoy.dart';
import 'package:dio/dio.dart';

class TodoRestRepository implements ItodoRepositoy {
  late Dio dio;
  String url = 'http://127.0.0.1/';
  TodoRestRepository() {
    dio = Dio();
  }

  @override
  Future<void> addTodo(ToDoModel todo) {
    //Implementação da lógica com DIO
    throw UnimplementedError();
  }

  @override
  Future<void> completeTodo(int todoId) {
    //Implementação da lógica com DIO
    throw UnimplementedError();
  }

  @override
  Future<List<ToDoModel>> getTodos() {
    //Implementação da lógica com DIO
    throw UnimplementedError();
  }

  @override
  Future<void> removeTodo(int todoId) {
    //Implementação da lógica com DIO
    throw UnimplementedError();
  }
}
