import 'package:flutter/material.dart';
import 'package:udemy_flutter/LessonFour.dart';

class NavigatorLesson extends StatelessWidget {
  const NavigatorLesson({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:InkWell(
      child: Text('go to lesson four'),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LessonFour()),
        );
      },
    ),
    );
  }
}