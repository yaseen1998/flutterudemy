import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:udemy_flutter/PageViewLessson.dart';
import 'package:udemy_flutter/QuizApp/quizapp.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    routes:{
      '/a': (context) => QuizApp(),
      '/b': (context) =>  NewMain(),
    },
    home: PVL(),
  ));
}

class NewMain extends StatefulWidget {
  const NewMain({super.key});

  @override
  State<NewMain> createState() => _NewMainState();
}

class _NewMainState extends State<NewMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Splash());
  }

  EasySplashScreen Splash() {
    return EasySplashScreen(
        backgroundColor: Colors.white,
        logoWidth: 200,
        durationInSeconds: 3,
        navigator: QuizApp(),
        loadingText: const Text(
          'Loading',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        loaderColor: Colors.black,
        loadingTextPadding: const EdgeInsets.all(20),
        logo: Image.asset('assets/images/image3.jpeg'),
      );
  }
}
