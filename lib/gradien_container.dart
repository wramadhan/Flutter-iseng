import 'package:flutter/material.dart';
import 'package:mainan/dice_roller.dart';

Alignment startAligment = Alignment.topLeft;
Alignment endAligment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  //dapat dibuat dua penerimaan state, yang biasanya begini
  const GradientContainer({super.key, required this.gradientColors});
  //atau bisa juga di custom seperti ini
  const GradientContainer.purple(
      {super.key, required List<Color> gradientColors})
      : gradientColors = const [
          Color.fromARGB(255, 118, 0, 0),
          Color.fromARGB(255, 63, 52, 103)
        ];
  final List<Color> gradientColors;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: gradientColors, begin: startAligment, end: endAligment),
      ),
      child: const Center(child: DiceRoller()),
    );
  }
}
