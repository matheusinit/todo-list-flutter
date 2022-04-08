import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_list/colors.dart';
import 'package:todo_list/constants.dart';
import 'package:todo_list/screens/account/components/header.dart';

import '../../../components/button_action.dart';
import '../../home/home_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.only(
        top: defaultPadding * 4.5,
        right: defaultPadding,
        left: defaultPadding,
      ),
      child: Column(
        children: <Widget>[
          const Header(),
          SizedBox(
            height: size.height * 0.55,
            child: SvgPicture.asset(
              'assets/illustrations/checklist.svg',
              allowDrawingOutsideViewBox: true,
              semanticsLabel: 'Checklist',
              fit: BoxFit.contain,
            ),
          ),
          Column(
            children: <Widget>[
              ButtonAction(
                text: "Entrar",
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
              ),
              ButtonAction(
                text: "Cadastrar",
                bgColor: secondaryColor,
                onPress: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
