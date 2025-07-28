import 'package:crash_course/conponents/text.dart';
import 'package:flutter/material.dart';

var beginAlignment = Alignment.topCenter;
var endAlignment = Alignment.bottomCenter;

class GradientBackgroundContainer extends StatelessWidget {
  const GradientBackgroundContainer({super.key, required this.colors});
  final List<Color> colors;
  void rollDice() {}
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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/dice-2.png', width: 200),
            const TextComponent(
              text: 'Sibailama',
              color: Colors.blue,
              fontSize: 24,
            ),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.white
              ),
              child: const TextComponent(text: 'Click Here',fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
