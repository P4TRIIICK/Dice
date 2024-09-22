import 'package:flutter/material.dart';
import 'package:firts_app/dice_roller.dart';

const startAlignment = Alignment
    .topLeft; // You ccan change var to final if the variable will never change or const
const endAlignment = Alignment.bottomRight;
int? numberTest;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
