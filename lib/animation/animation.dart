import 'package:flutter/material.dart';

class AnimationLesson extends StatefulWidget {
  const AnimationLesson({super.key});

  @override
  State<AnimationLesson> createState() => _AnimationLessonState();
}

class _AnimationLessonState extends State<AnimationLesson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Animation')),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.play_arrow),
          onPressed: () {
            setState(() {});
          },
        ),
        body: null);
  }
}
