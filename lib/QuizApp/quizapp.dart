import 'package:flutter/material.dart';
import 'package:udemy_flutter/QuizApp/quiz.dart';
import 'package:udemy_flutter/QuizApp/result.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  final List<Map<String, dynamic>> questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion']
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': ['Hassan', 'Ramaz', 'Mick', 'Max']
    },
  ];
  int questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex++;
    });
  }
  void restartQuiz() {
    setState(() {
      questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz App'),
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        child: questionIndex < questions.length
            ? Quiz(
                questions: questions,
                questionIndex: questionIndex,
                answerQuestion: answerQuestion)
            : Result(restartQuiz:restartQuiz)
      ),
    );
  }
}
