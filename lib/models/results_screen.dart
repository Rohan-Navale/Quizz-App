import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizz_app/data/questions.dart';
import 'package:quizz_app/models/questions_summary.dart';
import 'package:quizz_app/quiz.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.choosenAnswers});

  final List<String> choosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < choosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': choosenAnswers[i]
        },
      );
    }
    return summary;
  }

  @override
  Widget build(context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectAnswers = summaryData.where((data) {
      return data['correct_answer'] == data['user_answer'];
    }).length;

    return SizedBox(
      width: double.infinity, // get max width available
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
              'You have answered $numCorrectAnswers out of $numTotalQuestions questions correctly',
              style: GoogleFonts.roboto(fontSize: 14, color: Colors.white)),
          const SizedBox(height: 30),
          QuestionsSummary(summaryData),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Quiz()),
              );
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 16,
              ),
            ),
            icon: const Icon(Icons.restart_alt),
            label: const Text("Restart Quiz"),
          )
        ]),
      ),
    );
  }
}