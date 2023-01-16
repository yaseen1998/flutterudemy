import 'package:flutter/material.dart';

class PaddingAnimated extends StatefulWidget {
  const PaddingAnimated({super.key});

  @override
  State<PaddingAnimated> createState() => _PaddingAnimatedState();
}

class _PaddingAnimatedState extends State<PaddingAnimated> {
  double padValue = 0;
  double dx = 0;
  double dy = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animation')),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_arrow),
        onPressed: () {
          setState(() {
            padValue = padValue == 0 ? 20 : 0;
            dx = dx == 0 ? 1 : 0;
            dy = dy == 0 ? 1 : 0;
          });
        },
      ),
      body: AnimatedPadding(
        duration: const Duration(seconds: 2),
        padding: EdgeInsets.all(padValue),
        child: Container(
          color: Colors.grey,
          height: 200,
          child: AnimatedAlign(
            alignment: FractionalOffset(dx, dy),
            duration: const Duration(seconds: 1),
            child: const FlutterLogo(
              size: 60,
            ),
          ),
        ),
      ),
    );
  }
}
