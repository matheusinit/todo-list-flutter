import 'package:flutter/material.dart';

import '../colors.dart';
import 'app_text.dart';
import 'details_button.dart';
import 'favorite_button.dart';

class Category extends StatelessWidget {
  const Category({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 0),
            color: secondaryTextColor.withOpacity(0.25),
            blurRadius: 4,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppText(text: title),
          const Spacer(),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 8),
                child: const FavoriteButton(),
              ),
              const DetailsButton(),
            ],
          ),
        ],
      ),
    );
  }
}
