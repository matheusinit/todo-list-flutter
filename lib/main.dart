import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/colors.dart';
import 'package:todo_list/events/todo_bloc.dart';

import 'screens/account/account_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TodoBloc>(
      create: (BuildContext context) => TodoBloc(),
      child: MaterialApp(
        title: 'Todo list',
        theme: ThemeData(
          scaffoldBackgroundColor: backgroundColor,
          primaryColor: primaryColor,
          fontFamily: 'Poppins',
        ),
        home: const AccountScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
