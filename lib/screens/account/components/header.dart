import 'package:flutter/material.dart';

import '../../../colors.dart';
import '../../../components/app_large_text.dart';
import '../../../components/app_text.dart';
import '../../../constants.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const AppLargeText(
              text: "Todo List",
              weight: 700,
              size: defaultFontSize * 2,
            ),
            SizedBox(
              width: size.width * 0.65,
              child: const AppText(
                text: "A aplicação para completar suas tarefas. Cadastre-se.",
                color: secondaryTextColor,
                weight: 300,
              ),
            ),
          ],
        )
      ],
    );
  }
}
