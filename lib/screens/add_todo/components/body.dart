import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/components/app_text.dart';
import 'package:todo_list/events/todo.dart';
import 'package:todo_list/events/todo_bloc.dart';

import '../../../components/app_large_text.dart';
import '../../../components/button_action.dart';
import '../../../components/input_text.dart';
import '../../../constants.dart';
import '../../../events/todo_event.dart';

class Body extends StatefulWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  AddTodoState createState() => AddTodoState();
}

class AddTodoState extends State<Body> {
  // TodoItemEvent event = TodoItemEvent();
  String _todoname = '';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(
        top: defaultPadding * 4,
        right: defaultPadding,
        left: defaultPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: defaultPadding * 2),
            child: const AppLargeText(text: "Adicionar tarefa"),
          ),
          Column(
            children: [
              InputText(
                label: "Título",
                hintText: "Lavar a louça",
                onChanged: (text) {
                  setState(() {
                    _todoname = text;
                  });
                },
              ),
              Container(
                margin: const EdgeInsets.only(top: defaultPadding * 2),
                child: ButtonAction(
                  text: "Adicionar",
                  onPress: () {
                    BlocProvider.of<TodoBloc>(context).add(
                      TodoEvent.add(Todo(_todoname)),
                    );

                    FocusManager.instance.primaryFocus?.unfocus();

                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content:
                          AppText(text: 'Adicionado', color: Colors.white70),
                    ));
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
