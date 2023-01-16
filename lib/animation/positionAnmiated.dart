import 'package:flutter/material.dart';

class PositionAnimated extends StatefulWidget {
  const PositionAnimated({super.key});

  @override
  State<PositionAnimated> createState() => _PositionAnimatedState();
}

class _PositionAnimatedState extends State<PositionAnimated> {
    bool visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animation')),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_arrow),
        onPressed: () {
          setState(() {
            visible = !visible;
          });
        },
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black12,
          ),
          const Center(
            child: Text(
              'Text',
              style: TextStyle(fontSize: 30),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(seconds: 2),
            bottom: visible == true ? 250 : 350,
            right: 150,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  
  }
}