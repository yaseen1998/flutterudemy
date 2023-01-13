import 'package:flutter/material.dart';

class CounterTwo extends StatelessWidget {
  const CounterTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
        child: Container(
      width: 150,
      height: 150,
      child: const Center(
          child: Text(
        '0',
        style: TextStyle(fontSize: 40),
      )),
    ));
  }
}
