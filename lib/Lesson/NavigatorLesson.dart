import 'package:flutter/material.dart';

class NavigatorLesson extends StatelessWidget {
  const NavigatorLesson({super.key});
  static const routeName = 'navigator';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        child: Text('go to lesson four'),
        onTap: () {
          // Navigator.pushNamed(context, 'lessonFour',
          //     arguments: {'title': 'Lesson'});
          Navigator.pushReplacementNamed(context, 'LessonFour',
              arguments: {'title': 'Lesson'}
              );
              // difference between push and pushReplacement is that pushReplacement
              // push : you can go back to the previous page
              // pushReplacement: you can't go back to the previous page
              // pushReplacementNamed: you can't go back to the previous page
              // pushNamed: you can go back to the previous page
        },
      ),
    );
  }
}
