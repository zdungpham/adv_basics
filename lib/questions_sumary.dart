import 'package:adv_basics/data/questions.dart';
import 'package:flutter/material.dart';

class QuestionsSumary extends StatelessWidget {
  const QuestionsSumary({super.key, required this.sumaryData});
  final List<Map<String, Object>> sumaryData;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: sumaryData.map((data) {
        return Row(children: [
          Text(((data['question_index'] as int) + 1).toString()),
          Column(children: [
            Text(data['question'] as String ),
            const SizedBox(height: 5,),
            Text(data['user_answer'] as String),
            Text(data['correct_answer'] as String),

          ],),
        ],);
      }).toList(),
    );
  }
}
