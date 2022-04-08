// class TodoItemEvent {
//   String title = 'Todo test';
//   bool isDone = false;
// }

import 'todo.dart';

enum EventType { add, toggleDone, delete }

class TodoEvent {
  Todo todo = Todo('');
  int todoIndex = 0;
  EventType eventType = EventType.add;

  TodoEvent.add(this.todo) {
    eventType = EventType.add;
  }

  TodoEvent.toggle(int index) {
    eventType = EventType.toggleDone;
    todoIndex = index;
  }

  TodoEvent.delete(int index) {
    eventType = EventType.delete;
    todoIndex = index;
  }
}
