import 'package:flutter/material.dart';
import 'package:udemy_flutter/Lesson/LessonFour.dart';
import 'package:udemy_flutter/Lesson/NavigatorLesson.dart';
import 'package:udemy_flutter/QuizApp/quizapp.dart';

void main() {
  runApp( NewMain());
}

class NewMain extends StatelessWidget {
  const NewMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '',
      routes: {
        '': (context) => const QuizApp(),
        'lessonFour': (context) =>  LessonFour(title: 'Lesson Four'),
        NavigatorLesson.routeName: (context) => const NavigatorLesson(),

      },
      theme: ThemeData(
        primarySwatch: Colors.teal,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.black),
        fontFamily: 'OpenSans',
        appBarTheme:const AppBarTheme(
          titleTextStyle: TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      
      home:  NavigatorLesson(),
    );
    
  }
}
