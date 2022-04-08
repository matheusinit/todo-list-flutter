import 'package:flutter/material.dart';
import 'package:todo_list/screens/home/components/header.dart';

import '../../../constants.dart';
import 'favorite_categories_section.dart';
import 'progress_box.dart';
import 'to_do_section.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: defaultPadding * 4,
        right: defaultPadding,
        left: defaultPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Header(),
          // Container(
          //   margin: const EdgeInsets.only(bottom: defaultPadding * 2),
          //   child: const ProgressBox(),
          // ),
          Container(
            margin: const EdgeInsets.only(bottom: defaultPadding * 2),
            child: const ToDoSection(),
          ),
          // Container(
          //   margin: const EdgeInsets.only(bottom: defaultPadding * 2),
          //   child: const FavoriteCategoriesSection(),
          // )
        ],
      ),
    );
  }
}
