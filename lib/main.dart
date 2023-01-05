import 'package:flutter/material.dart';
import 'package:udemy_flutter/DrawerLesson.dart';
import 'package:udemy_flutter/LessonFour.dart';
import 'package:udemy_flutter/LessonOne.dart';
import 'package:udemy_flutter/LessonThree.dart';
import 'package:udemy_flutter/LessonTwo.dart';
import 'package:udemy_flutter/NavigatorLesson.dart';
import 'package:udemy_flutter/QuizApp/quizapp.dart';
import 'package:udemy_flutter/SliderLesson.dart';
import 'package:udemy_flutter/Stack.dart';
import 'package:udemy_flutter/TabBarBottom.dart';
import 'package:udemy_flutter/TabBarLesson.dart';

void main() {
  runApp( NewMain());
}

class NewMain extends StatelessWidget {
  const NewMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'QuizApp',
      routes: {
        '': (context) => const LessonOne(),
        'lessonTwo': (context) => const LessonTwo(),
        'lessonThree': (context) =>  LessonThree(),
        'lessonFour': (context) =>  LessonFour(title: 'Lesson Four'),
        NavigatorLesson.routeName: (context) => const NavigatorLesson(),
        'Drawer': (context) => const DrawerLesson(),
        'tabBar': (context) => const TabBarLesson(),
        'tabBarBottom': (context) =>  TabBarBottom(),
        'SliderLesson': (context) =>  SliderLesson(),
        'QuizApp': (context) =>  QuizApp(),
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
