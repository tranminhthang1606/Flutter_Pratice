import 'dart:math';

import 'package:crash_course/conponents/text.dart';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-2.png';
  void rollDice() {
    setState(() {
      Random random = Random();
      int randomNumber = random.nextInt(6) + 1;
      activeDiceImage = 'assets/images/dice-$randomNumber.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(activeDiceImage, width: 200),
        const TextComponent(
          text: 'Sibailama',
          color: Colors.blue,
          fontSize: 24,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: EdgeInsets.only(left: 20, right: 20),
            backgroundColor: Colors.white,
          ),
          child: TextComponent(text: 'Click Here', fontSize: 20),
        ),
      ],
    );
  }
}
