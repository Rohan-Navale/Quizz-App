import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity, // get max width available
      child: Container(
        margin: const EdgeInsets.all(40),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text('You answered x out of y questions correctly!'),
              const SizedBox(height: 30),
              TextButton(onPressed: (){}, child: Text('Restart Quiz'),)
            ]),
      ),
    );
  }
}
