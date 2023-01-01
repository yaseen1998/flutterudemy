import 'package:flutter/material.dart';
import 'package:udemy_flutter/LessonFour.dart';
import 'package:udemy_flutter/LessonOne.dart';
import 'package:udemy_flutter/LessonThree.dart';
import 'package:udemy_flutter/LessonTwo.dart';
import 'package:udemy_flutter/Stack.dart';

void main() {
  runApp(const NewMain());
}

class NewMain extends StatelessWidget {
  const NewMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      
      home:  LessonFour(),
    );
    
  }
}
