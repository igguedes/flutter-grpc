from concurrent import futures
import grpc
import todo_pb2
import todo_pb2_grpc

# Banco de dados em memória
todos = []
id_counter = 1

class TodoService(todo_pb2_grpc.TodoServiceServicer):
    def AddTodo(self, request, context):
        global id_counter
        todo = todo_pb2.TodoItem(
            id=id_counter,
            title=request.title,
            description=request.description,
            completed=False,
        )
        todos.append(todo)
        id_counter += 1
        return todo

    def GetTodos(self, request, context):
        return todo_pb2.TodoList(items=todos)

    def CompleteTodo(self, request, context):
        for todo in todos:
            if todo.id == request.id:
                todo.completed = not todo.completed
                return todo
        context.set_code(grpc.StatusCode.NOT_FOUND)
        context.set_details('To-Do item not found')
        return todo_pb2.TodoItem()

    def DeleteTodo(self, request, context):
        global todos
        for todo in todos:
            if todo.id == request.id:
                todos.remove(todo)
                return todo
        context.set_code(grpc.StatusCode.NOT_FOUND)
        context.set_details('To-Do item not found')
        return todo_pb2.TodoItem()

# Inicializar o servidor
def serve():
    server = grpc.server(futures.ThreadPoolExecutor(max_workers=10))
    todo_pb2_grpc.add_TodoServiceServicer_to_server(TodoService(), server)
    server.add_insecure_port('[::]:8080')
    print("Servidor gRPC rodando em localhost:8080")
    server.start()
    server.wait_for_termination()

if __name__ == '__main__':
    serve()
