import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_list/screens/add_todo/add_to_do_screen.dart';
import 'package:todo_list/screens/home/home_screen.dart';

import '../colors.dart';
import '../constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -2),
            color: iconColor.withOpacity(0.25),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
              width: 50,
              height: 50,
              color: iconColor,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
          ),
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/folder-outline.svg',
              width: 50,
              height: 50,
              color: iconColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/plus-circle-outline.svg',
              width: 50,
              height: 50,
              color: iconColor,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AddToDoScreen()),
              );
            },
          ),
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/cog-outline.svg',
              width: 50,
              height: 50,
              color: iconColor,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
