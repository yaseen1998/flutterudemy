import 'package:flutter/material.dart';
import 'package:udemy_flutter/API/SharedPrefrence.dart';
import 'package:udemy_flutter/API/urlLauncher.dart';
import 'package:udemy_flutter/BMI/bmiHome.dart';

void main() {
  runApp(const NewMain());
}

class NewMain extends StatelessWidget {
  const NewMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.teal,
          canvasColor: Colors.black,
          iconTheme: const IconThemeData(
            color: Colors.white,
            size: 90,
          ),
          textTheme: const TextTheme(
            bodyText1: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
        home: const BmiHome());
  }
}
