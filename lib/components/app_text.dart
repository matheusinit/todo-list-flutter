import 'package:flutter/material.dart';

import '../colors.dart';
import '../constants.dart';

class AppText extends StatelessWidget {
  const AppText({
    Key? key,
    required this.text,
    this.color = primaryTextColor,
    this.size = defaultFontSize,
    this.weight = 400,
    this.lineThrough = false,
  }) : super(key: key);

  final String text;
  final Color color;
  final double size;
  final int weight;
  final bool lineThrough;

  @override
  Widget build(BuildContext context) {
    FontWeight fontWeight = FontWeight.w400;

    if (weight == 500) {
      fontWeight = FontWeight.w500;
    } else if (weight == 300) {
      fontWeight = FontWeight.w300;
    }

    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: size,
        decoration:
            lineThrough ? TextDecoration.lineThrough : TextDecoration.none,
      ),
    );
  }
}
