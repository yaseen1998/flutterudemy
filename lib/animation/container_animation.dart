import 'package:flutter/material.dart';
import 'dart:math';

class ContainerAnimation extends StatefulWidget {
  const ContainerAnimation({super.key});

  @override
  State<ContainerAnimation> createState() => _ContainerAnimationState();
}

class _ContainerAnimationState extends State<ContainerAnimation> {
  double height = 50;
  double width = 50;
  bool visible = true;
  Color color = Colors.green;
  BorderRadiusGeometry border = BorderRadius.circular(5);
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(title: const Text('Animation')),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_arrow),
        onPressed: () {
          setState(() {
            Random random = Random();
            visible = !visible;
            width = random.nextInt(200).toDouble();
            height = random.nextInt(200).toDouble();
            color = Color.fromRGBO(random.nextInt(255), random.nextInt(255),
                random.nextInt(255), 1);
            border = BorderRadius.circular(random.nextInt(100).toDouble());
          });
        },
      ),
      body: Center(
        child: AnimatedOpacity(
          opacity: visible == true ? 1 : 0,
          duration:Duration(seconds: 3) ,
          child: AnimatedContainer(
            curve: Curves.easeIn,
            width: width,
            height: height,
            decoration: BoxDecoration(color: color, borderRadius: border),
            duration: Duration(seconds: 3),
          ),
        ),
      ),
    );
 
  }
}