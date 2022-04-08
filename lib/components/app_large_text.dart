import 'package:flutter/material.dart';

import '../colors.dart';
import '../constants.dart';

class AppLargeText extends StatelessWidget {
  const AppLargeText({
    Key? key,
    required this.text,
    this.color = primaryTextColor,
    this.size = defaultFontSize * 1.5,
    this.weight = 500,
  }) : super(key: key);

  final String text;
  final Color color;
  final double size;
  final int weight;

  @override
  Widget build(BuildContext context) {
    FontWeight fontWeight = FontWeight.w500;

    if (weight == 600) {
      fontWeight = FontWeight.w600;
    } else if (weight == 700) {
      fontWeight = FontWeight.w700;
    }

    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: size,
      ),
    );
  }
}
