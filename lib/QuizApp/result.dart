import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function restartQuiz;
  const Result({super.key, required this.restartQuiz});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
        const Center(
          child: Text('You did it!',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
        ),
        TextButton(
          onPressed: () => restartQuiz(),
          child: const Text('Restart Quiz',
              style: TextStyle(fontSize: 18, color: Colors.blue)),
        ),
      ],
    );
  }
}
