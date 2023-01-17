import 'dart:math';

import 'package:flutter/material.dart';

class TextTween extends StatefulWidget {
  const TextTween({super.key});

  @override
  State<TextTween> createState() => _TextTweenState();
}

class _TextTweenState extends State<TextTween> {
  double fontSize = 30;
  Color color = Colors.red;
  double value = 0;
  double angle = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animation')),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_arrow),
        onPressed: () {
          Random r = Random();
          setState(() {
            fontSize = r.nextDouble();
            color = Colors.green;
          });
        },
      ),
      body: Center(
        child: AnimatedDefaultTextStyle(
          duration: const Duration(seconds: 2),
          style: TextStyle(color: color, fontSize: fontSize),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Text'),
              TweenAnimationBuilder<double>(
                tween: Tween(begin: 0,end: angle),
                duration: Duration(seconds: 1),
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.green,
                ),
                builder: (_, ang, child) => Transform.rotate(
                  angle: ang,
                  child: child,
                ),
              ),
              Text("${(value * (180 / pi)).round()}"),
              Slider(
                value: value,
                onChanged: (val) => setState(() {
                  value = val;
                  angle = val;
                }),
                min: 0,
                max: pi*2,
                divisions: 4,
              )
            ],
          ),
        ),
      ),
    );
  }
}