import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/events/todo_bloc.dart';

import '../../../colors.dart';

class ProgressBox extends StatefulWidget {
  const ProgressBox({
    Key? key,
  }) : super(key: key);

  @override
  State<ProgressBox> createState() => _ProgressBoxState();
}

class _ProgressBoxState extends State<ProgressBox> {
  int _percent = 0;

  int getPercent() {
    int total = BlocProvider.of<TodoBloc>(context).state.length;

    List<bool> done = BlocProvider.of<TodoBloc>(context)
        .state
        .map((todo) => todo.isDone == true)
        .toList();

    print(done.length);

    return 0;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: 95,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 0),
            blurRadius: 4,
            color: primaryTextColor.withOpacity(0.15),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 5),
                      child: const Text(
                        '20%',
                        style: TextStyle(
                          fontSize: 32,
                          color: secondaryTextColor,
                        ),
                      ),
                    ),
                    const Text(
                      'completado',
                      style: TextStyle(
                        color: secondaryTextColor,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 3,
                          width: 100,
                          color: completedColor,
                        ),
                        Container(
                          height: 3,
                          width: 170,
                          color: secondaryTextColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 3),
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: primaryColor,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 3),
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: secondaryTextColor,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
