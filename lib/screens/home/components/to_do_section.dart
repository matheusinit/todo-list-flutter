import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/events/todo_bloc.dart';
import 'package:todo_list/events/todo_event.dart';

import 'package:collection/collection.dart';

import '../../../components/app_text.dart';
import '../../../components/to_do.dart';

class ToDoSection extends StatefulWidget {
  const ToDoSection({
    Key? key,
  }) : super(key: key);

  @override
  TodoSectionState createState() => TodoSectionState();
}

class TodoSectionState extends State<ToDoSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(bottom: 15),
          child: const AppText(
            text: "Tarefas",
            size: 18,
          ),
        ),
        BlocBuilder(
          bloc: BlocProvider.of<TodoBloc>(context),
          builder: (context, snapshot) => Column(
              children: BlocProvider.of<TodoBloc>(context)
                  .state
                  .mapIndexed((index, todo) => ToDo(
                        text: todo.title,
                        done: todo.isDone,
                        onComplete: () {
                          BlocProvider.of<TodoBloc>(context)
                              .add(TodoEvent.toggle(index));
                        },
                        onDelete: () {
                          BlocProvider.of<TodoBloc>(context)
                              .add(TodoEvent.delete(index));
                        },
                      ))
                  .toList()),
        ),
      ],
    );
  }
}
