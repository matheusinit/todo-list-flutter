import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_list/colors.dart';

class DetailsButton extends StatelessWidget {
  const DetailsButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: IconButton(
        padding: EdgeInsets.zero,
        icon: SvgPicture.asset(
          'assets/icons/chevron-right.svg',
          width: 30,
          height: 30,
          color: Colors.white,
        ),
        onPressed: () {},
        iconSize: 30,
      ),
    );
  }
}
