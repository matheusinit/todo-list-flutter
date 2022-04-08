// import 'package:bloc/bloc.dart';
// import 'package:todo_list/events/todo_item.dart';
// import 'package:todo_list/events/todo_item_event.dart';

// class TodoItemBloc extends Bloc<TodoItemEvent, List<TodoItem>> {
//   TodoItemBloc() : super([]);

//   List<TodoItem> get initialState => <TodoItem>[];

//   @override
//   Stream<List<TodoItem>> mapEventToState(TodoItemEvent event) async* {
//     switch (event.eventType) {
//       case EventType.add:
//         List<TodoItem> newState = List.from(state);

//         if (event.todoItem != null) {
//           newState.add(event.todoItem);
//         }

//         yield newState;
//         break;
//       case EventType.toggleDone:
//         List<TodoItem> newState = List.from(state);

//         TodoItem todoItem = newState.elementAt(event.todoIndex);

//         todoItem.isDone = !todoItem.isDone;

//         newState.replaceRange(event.todoIndex, event.todoIndex, [todoItem]);

//         yield newState;

//         break;
//       default:
//         throw Exception('Event not found $event');
//     }
//   }
// }

// // class UpdateTodoBloc extends Bloc<TodoItemEvent, TodoItemEvent> {
// //   TodoItemEvent todo = TodoItemEvent();

// //   UpdateTodoBloc() : super(TodoItemEvent());

// //   @override
// //   Stream<TodoItemEvent> mapEventToState(TodoItemEvent event) async* {
// //     todo.isDone = !todo.isDone;
// //     yield todo;
// //   }
// // }

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/events/todo_event.dart';

import 'todo.dart';

class TodoBloc extends Bloc<TodoEvent, List<Todo>> {
  TodoBloc() : super([]);

  @override
  List<Todo> get initialState => <Todo>[];

  @override
  Stream<List<Todo>> mapEventToState(TodoEvent event) async* {
    switch (event.eventType) {
      case EventType.add:
        List<Todo> newState = List.from(state);
        newState.add(event.todo);

        yield newState;
        break;

      case EventType.toggleDone:
        List<Todo> newState = List.from(state);

        Todo todo = newState.elementAt(event.todoIndex);
        todo.isDone = !todo.isDone;
        newState.replaceRange(event.todoIndex, event.todoIndex + 1, [todo]);

        yield newState;
        break;

      case EventType.delete:
        List<Todo> newState = List.from(state);

        newState.removeAt(event.todoIndex);

        yield newState;
        break;
    }
  }
}
