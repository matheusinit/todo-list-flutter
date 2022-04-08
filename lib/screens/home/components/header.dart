import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../colors.dart';
import '../../../components/app_large_text.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: <Widget>[
          const AppLargeText(text: 'Olá usuário'),
          const Spacer(),
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/account-circle.svg',
              color: iconColor,
              height: 50,
              width: 50,
            ),
            onPressed: () {},
            iconSize: 50,
          )
        ],
      ),
    );
  }
}
