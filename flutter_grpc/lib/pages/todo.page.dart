import 'package:flutter/material.dart';
import 'package:flutter_grpc/stores/todo.store.dart';

class ToDoPage extends StatefulWidget {
  @override
  _ToDoPageState createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  final store = new TodoStore();

  // Controlador do campo de texto
  final TextEditingController _controller = TextEditingController();

  void _addToDoItem() async {
    final String newToDo = _controller.text.trim();

    if (newToDo.isNotEmpty) {
      await store.addTodo(newToDo);
      setState(() {});
      _controller.clear();
    }
  }

  void _toggleToDoDone(int id) {
    store.completeTodo(id);
    setState(() {});
  }

  void _removeTodo(int id) {
    store.removeTodo(id);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de To-Dos'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Formulário de adicionar novo To-Do
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Adicionar Novo To-Do',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 8.0),
            ElevatedButton(
              onPressed: _addToDoItem,
              child: Text('Adicionar'),
            ),
            SizedBox(height: 16.0),
            // Lista de To-Dos
            Expanded(
                child: FutureBuilder(
                    future: store.getAllTodos(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Text('Carregando dados');
                      } else if (snapshot.hasError) {
                        return Text('Deu erro nos dados');
                      } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                        return Center(child: Text('Nenhum To-Do encontrado.'));
                      }
                      final _toDoItems = snapshot.data;
                      return ListView.builder(
                        itemCount: _toDoItems!.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: Checkbox(
                              value: _toDoItems[index].completed,
                              onChanged: (_) {
                                _toggleToDoDone(_toDoItems[index].id!);
                              },
                            ),
                            title: Text(
                              _toDoItems[index].title!,
                              style: TextStyle(
                                decoration: _toDoItems[index].completed!
                                    ? TextDecoration.lineThrough
                                    : TextDecoration.none,
                              ),
                            ),
                            trailing: IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: () {
                                _removeTodo(_toDoItems[index].id!);
                              },
                            ),
                          );
                        },
                      );
                    })),
          ],
        ),
      ),
    );
  }
}
