import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questions;
  Question({
    super.key,
    required this.questions,
  });

  @override
  Widget build(BuildContext context) {
    return Text(questions,
        style: const TextStyle(fontSize: 28), textAlign: TextAlign.center);
  }
}
