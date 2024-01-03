import 'package:flutter/material.dart';
import 'package:quizz_app/start_screen.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientColor extends StatelessWidget {
  const GradientColor(this.topColor, this.bottomColor, {super.key});

  final Color topColor;
  final Color bottomColor;

  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
      gradient: LinearGradient(
          colors: [topColor, bottomColor],
          begin: startAlignment,
          end: endAlignment),),
    child: const Center(child: StartScreen()),);
  }
}
