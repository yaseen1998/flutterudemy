import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function restartQuiz;
  int totalScore;
   Result({super.key, required this.restartQuiz, required this.totalScore});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
        const Center(
          child: Text('You did it!',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
        ),
        const SizedBox(height: 20),
        Text('Your score is $totalScore',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        TextButton(
          onPressed: () => restartQuiz(),
          child: const Text('Restart Quiz',
              style: TextStyle(fontSize: 18, color: Colors.blue)),
        ),
      ],
    );
  }
}
