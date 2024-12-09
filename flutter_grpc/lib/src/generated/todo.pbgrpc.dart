//
//  Generated code. Do not modify.
//  source: todo.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'todo.pb.dart' as $0;

export 'todo.pb.dart';

@$pb.GrpcServiceName('todo.TodoService')
class TodoServiceClient extends $grpc.Client {
  static final _$addTodo = $grpc.ClientMethod<$0.TodoItem, $0.TodoItem>(
      '/todo.TodoService/AddTodo',
      ($0.TodoItem value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.TodoItem.fromBuffer(value));
  static final _$getTodos = $grpc.ClientMethod<$0.Empty, $0.TodoList>(
      '/todo.TodoService/GetTodos',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.TodoList.fromBuffer(value));
  static final _$completeTodo = $grpc.ClientMethod<$0.TodoId, $0.TodoItem>(
      '/todo.TodoService/CompleteTodo',
      ($0.TodoId value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.TodoItem.fromBuffer(value));
  static final _$deleteTodo = $grpc.ClientMethod<$0.TodoId, $0.TodoItem>(
      '/todo.TodoService/DeleteTodo',
      ($0.TodoId value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.TodoItem.fromBuffer(value));

  TodoServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.TodoItem> addTodo($0.TodoItem request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addTodo, request, options: options);
  }

  $grpc.ResponseFuture<$0.TodoList> getTodos($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTodos, request, options: options);
  }

  $grpc.ResponseFuture<$0.TodoItem> completeTodo($0.TodoId request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$completeTodo, request, options: options);
  }

  $grpc.ResponseFuture<$0.TodoItem> deleteTodo($0.TodoId request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteTodo, request, options: options);
  }
}

@$pb.GrpcServiceName('todo.TodoService')
abstract class TodoServiceBase extends $grpc.Service {
  $core.String get $name => 'todo.TodoService';

  TodoServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.TodoItem, $0.TodoItem>(
        'AddTodo',
        addTodo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TodoItem.fromBuffer(value),
        ($0.TodoItem value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.TodoList>(
        'GetTodos',
        getTodos_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.TodoList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.TodoId, $0.TodoItem>(
        'CompleteTodo',
        completeTodo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TodoId.fromBuffer(value),
        ($0.TodoItem value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.TodoId, $0.TodoItem>(
        'DeleteTodo',
        deleteTodo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TodoId.fromBuffer(value),
        ($0.TodoItem value) => value.writeToBuffer()));
  }

  $async.Future<$0.TodoItem> addTodo_Pre($grpc.ServiceCall call, $async.Future<$0.TodoItem> request) async {
    return addTodo(call, await request);
  }

  $async.Future<$0.TodoList> getTodos_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getTodos(call, await request);
  }

  $async.Future<$0.TodoItem> completeTodo_Pre($grpc.ServiceCall call, $async.Future<$0.TodoId> request) async {
    return completeTodo(call, await request);
  }

  $async.Future<$0.TodoItem> deleteTodo_Pre($grpc.ServiceCall call, $async.Future<$0.TodoId> request) async {
    return deleteTodo(call, await request);
  }

  $async.Future<$0.TodoItem> addTodo($grpc.ServiceCall call, $0.TodoItem request);
  $async.Future<$0.TodoList> getTodos($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.TodoItem> completeTodo($grpc.ServiceCall call, $0.TodoId request);
  $async.Future<$0.TodoItem> deleteTodo($grpc.ServiceCall call, $0.TodoId request);
}
