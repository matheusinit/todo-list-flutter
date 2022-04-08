import 'package:flutter/material.dart';

import '../colors.dart';
import '../constants.dart';

class ButtonAction extends StatelessWidget {
  const ButtonAction({
    Key? key,
    required this.text,
    this.bgColor = primaryColor,
    this.textColor = Colors.white,
    required this.onPress,
  }) : super(key: key);

  final String text;
  final Color bgColor;
  final Color textColor;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: size.width - defaultPadding * 2,
      height: 45,
      child: TextButton(
        onPressed: onPress,
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 16,
          ),
        ),
        style: TextButton.styleFrom(
            backgroundColor: bgColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            )),
      ),
    );
  }
}
