import 'package:flutter/material.dart';
import 'package:udemy_flutter/LessonFour.dart';

class NavigatorLesson extends StatelessWidget {
  const NavigatorLesson({super.key});
  static const routeName = 'navigator';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        child: Text('go to lesson four'),
        onTap: () {
          Navigator.pushNamed(context, 'lessonFour',
              arguments: {'title': 'Lesson'});
        },
      ),
    );
  }
}
