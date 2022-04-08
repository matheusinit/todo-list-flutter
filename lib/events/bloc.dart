// import 'package:bloc/bloc.dart';
// import 'package:todo_list/events/todo_event.dart';

// class AddTodoBloc extends Bloc<TodoItemEvent, List> {
//   List<TodoItemEvent> list = <TodoItemEvent>[];

//   AddTodoBloc() : super([]);

//   @override
//   Stream<List> mapEventToState(TodoItemEvent event) async* {
//     list.add(event);
//     yield list;
//   }
// }

// class UpdateTodoBloc extends Bloc<TodoItemEvent, TodoItemEvent> {
  // TodoItemEvent todo = TodoItemEvent();

//   UpdateTodoBloc() : super(TodoItemEvent());

//   @override
//   Stream<TodoItemEvent> mapEventToState(TodoItemEvent event) async* {
//     todo.isDone = !todo.isDone;
//     yield todo;
//   }
// }
