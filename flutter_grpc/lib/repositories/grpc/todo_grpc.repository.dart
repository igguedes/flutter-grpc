import 'package:flutter_grpc/models/todo.model.dart';
import 'package:flutter_grpc/repositories/interfaces/Itodo_repositoy.dart';
import 'package:flutter_grpc/src/generated/todo.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class TodoGrpcRepository implements ItodoRepositoy {
  late TodoServiceClient service;

  TodoGrpcRepository() {
    final channel = ClientChannel(
      '127.0.0.1', // Substitua pelo endereço do servidor
      port: 8080, // Porta do servidor GRPC
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );

    service = TodoServiceClient(channel);
  }

  @override
  Future<void> addTodo(ToDoModel todo) async {
    final todoItem = TodoItem(
        title: todo.title,
        description: todo.description,
        completed: todo.completed,
        id: todo.id);
    await service.addTodo(todoItem);
  }

  @override
  Future<List<ToDoModel>> getTodos() async {
    List<ToDoModel> result = [];
    try {
      final response = await service.getTodos(Empty());
      for (var todo in response.items) {
        result.add(ToDoModel(
            completed: todo.completed,
            id: todo.id,
            title: todo.title,
            description: todo.description));
      }
    } catch (e) {
      print('Erro ao listar To-Dos: $e');
    }
    return result;
  }

  @override
  Future<void> removeTodo(int todoId) async {
    await service.deleteTodo(TodoId(id: todoId));
  }

  @override
  Future<void> completeTodo(int todoId) async {
    await service.completeTodo(TodoId(id: todoId));
  }
}
