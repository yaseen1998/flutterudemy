import 'package:flutter/material.dart';

class StackLessonn extends StatelessWidget {
  const StackLessonn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFE5E5E5),
      alignment: Alignment.center,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 200.0,
            height: 200.0,
            color: Colors.red,
          ),
          Container(
            width: 150.0,
            height: 150.0,
            color: Colors.green,
          ),
          Container(
            width: 100.0,
            height: 100.0,
            color: Colors.blue,
          ),
          Container(
            width: 50.0,
            height: 50.0,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}