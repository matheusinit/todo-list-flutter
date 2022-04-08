import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../colors.dart';
import 'app_text.dart';

class ToDo extends StatelessWidget {
  const ToDo({
    Key? key,
    required this.text,
    this.done = false,
    required this.onComplete,
    required this.onDelete,
  }) : super(key: key);

  final String text;
  final bool done;
  final Function() onComplete;
  final Function() onDelete;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      margin: const EdgeInsets.only(bottom: 10),
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: secondaryTextColor.withOpacity(0.25),
            blurRadius: 4,
          ),
        ],
      ),
      child: Row(
        children: [
          Row(
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  done
                      ? 'assets/icons/checkbox-rounded-marked.svg'
                      : 'assets/icons/checkbox-rounded.svg',
                  color: done ? secondaryTextColor : primaryTextColor,
                ),
                onPressed: onComplete,
              ),
              AppText(
                text: text,
                color: done ? secondaryTextColor : primaryTextColor,
                lineThrough: done ? true : false,
              ),
            ],
          ),
          Spacer(),
          Column(
            children: [
              IconButton(
                icon: Icon(
                  Icons.delete_outlined,
                  color: done ? secondaryTextColor : primaryTextColor,
                ),
                onPressed: onDelete,
              )
            ],
          )
        ],
      ),
    );
  }
}
