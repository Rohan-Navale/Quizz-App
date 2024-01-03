import 'package:quizz_app/gradient_color.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientColor(
            Color.fromARGB(255, 78, 13, 151), Color.fromARGB(255, 107, 15, 168)),
      ),
    ),
  );
}
