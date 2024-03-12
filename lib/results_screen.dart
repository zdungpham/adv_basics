import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/questions_sumary.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> sumary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      sumary.add(
        {
          'question_index': i,
          'question': questions[i],
          'correct-answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i],
        },
      );
    }
    return sumary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You answered X out of Y questions correctly'),
            const SizedBox(
              height: 30,
            ),
            QuestionsSumary(getSummaryData()),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Restart Quiz'),
            )
          ],
        ),
      ),
    );
  }
}
