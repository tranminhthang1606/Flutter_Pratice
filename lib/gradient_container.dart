
import 'package:crash_course/conponents/dice_roller.dart';
import 'package:flutter/material.dart';

var beginAlignment = Alignment.topCenter;
var endAlignment = Alignment.bottomCenter;

class GradientBackgroundContainer extends StatelessWidget {
  const GradientBackgroundContainer({super.key, required this.colors});
  final List<Color> colors;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: beginAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller()
      ),
    );
  }
}
