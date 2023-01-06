import 'package:flutter/material.dart';
import 'package:udemy_flutter/QuizApp/answer.dart';
import 'package:udemy_flutter/QuizApp/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, dynamic>> questions;
  final int questionIndex;
  final Function answerQuestion;
  const Quiz({super.key, required this.questions, required this.questionIndex, required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Question(questions: questions[questionIndex]['questionText']),
            ...questions[questionIndex]['answers']
                .map((answer) =>
                    Answer(answerText: answer['text'], selectHandler:()=> answerQuestion(answer['score'])))
                .toList(),
          ],
        );
      
  }
}