import 'package:flutter/material.dart';

import '../../../components/app_text.dart';
import '../../../components/category.dart';

class FavoriteCategoriesSection extends StatelessWidget {
  const FavoriteCategoriesSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 15),
          child: const AppText(
            text: "Categorias favoritas",
            size: 18,
          ),
        ),
        Column(
          children: const <Widget>[
            Category(title: "Backend"),
            Category(title: "Pessoal"),
            Category(title: "Faculdade"),
          ],
        ),
      ],
    );
  }
}
