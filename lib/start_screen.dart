import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset("assets/images/quiz-logo.png", width: 300),
        const SizedBox(height: 70),
        const Text(
          "Learn Flutter the fun way!",
          style: TextStyle(
            fontSize: 24,
            color: Color.fromARGB(255, 237, 223, 252),
          ),
        ),
        const SizedBox(height: 30),
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 16,
            ),
          ),
          child: const Text("Start Quiz"),
        )
      ],
    );
  }
}
