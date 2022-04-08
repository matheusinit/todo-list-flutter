import 'package:flutter/material.dart';

import '../colors.dart';
import 'app_text.dart';

class InputText extends StatelessWidget {
  const InputText(
      {Key? key,
      required this.label,
      required this.hintText,
      required this.onChanged})
      : super(key: key);

  final String label;
  final String hintText;
  final Function(String text) onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(text: label, weight: 500),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              color: backgroundInput,
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextField(
              onChanged: onChanged,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: const TextStyle(
                  color: inputText,
                  fontWeight: FontWeight.w500,
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
