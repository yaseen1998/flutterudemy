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
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9}]
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Mick', 'score': 13},
        {'text': 'Locas', 'score': 8},
        {'text': 'Joun', 'score': 6},
        {'text': 'Max', 'score': 10}]
    },
  ];
  int questionIndex = 0;
  int totalScore = 0;
  bool darkMode = false;
  void answerQuestion(int score) {
    setState(() {
      questionIndex++;
      totalScore += score;
    });
  }
  void restartQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz App'),
        actions: [
          Switch(
            value: darkMode,
            onChanged: (value)=> {
              setState(() {
                darkMode = value;
              }),
            },
            inactiveThumbColor: Colors.red,
            inactiveTrackColor: Colors.grey,
            activeColor: Colors.orange,
            
          )
        ],
      ),
      body: Container(
        color: darkMode ? Colors.black : Colors.white,
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        child: questionIndex < questions.length
            ? Quiz(
                questions: questions,
                questionIndex: questionIndex,
                answerQuestion: answerQuestion)
            : Result(restartQuiz:restartQuiz, totalScore: totalScore)
      ),
    );
  }
}
