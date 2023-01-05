import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function selectHandler;
   const Answer({super.key, required this.answerText, required this.selectHandler});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: () => selectHandler(),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
          textStyle: MaterialStateProperty.all(const TextStyle(
            color: Colors.white,
          )),
        ),
        child:  Text(answerText, style: const TextStyle(fontSize: 20)),
      ),
    );
  }
}
