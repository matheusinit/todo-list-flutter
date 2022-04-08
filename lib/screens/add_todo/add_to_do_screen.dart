import 'package:flutter/material.dart';

import 'package:todo_list/components/bottom_nav_bar.dart';

import 'components/body.dart';

class AddToDoScreen extends StatelessWidget {
  const AddToDoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
