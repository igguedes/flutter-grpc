import 'package:flutter/material.dart';
import 'package:flutter_grpc/pages/todo.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter gRPC Demo',
      home: ToDoPage(),
    );
  }
}
