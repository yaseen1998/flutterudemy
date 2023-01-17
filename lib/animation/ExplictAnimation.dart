import 'package:flutter/material.dart';
import 'dart:math';

class ExplictAnimation extends StatefulWidget {
  const ExplictAnimation({super.key});

  @override
  State<ExplictAnimation> createState() => _ExplictAnimationState();
}

class _ExplictAnimationState extends State<ExplictAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animatiion;
  late Animation<AlignmentGeometry> _geometry;
  late Animation<Decoration> _decoration;
  late Animation<TextStyle> _style;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true, min: 0);
    _animatiion = CurvedAnimation(parent: _controller, curve: Curves.linear);
    _geometry = Tween<AlignmentGeometry>(
            begin: Alignment.bottomRight, end: Alignment.topLeft)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.linear));
    _decoration = DecorationTween(
            begin: BoxDecoration(color: Colors.red),
            end: BoxDecoration(color: Colors.green))
        .animate(CurvedAnimation(parent: _controller, curve: Curves.linear));
    _style = TextStyleTween(
            begin: TextStyle(color: Colors.red),
            end: TextStyle(color: Colors.green))
        .animate(CurvedAnimation(parent: _controller, curve: Curves.linear));
    
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(title: const Text('Animation')),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_arrow),
        onPressed: () {
          setState(() {});
        },
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              RotationTransition(
                turns: _animatiion,
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: FlutterLogo(size: 60),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              ScaleTransition(
                scale: _animatiion,
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: FlutterLogo(size: 60),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizeTransition(
                sizeFactor: _animatiion,
                // axis: Axis.horizontal,
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: FlutterLogo(size: 100),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              FadeTransition(
                opacity: _animatiion,
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: FlutterLogo(size: 80),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              AlignTransition(
                alignment: _geometry,
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: FlutterLogo(size: 80),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              DecoratedBoxTransition(
                decoration: _decoration,
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: FlutterLogo(size: 80),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              DefaultTextStyleTransition(
                style: _style,
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text('Animation',style: TextStyle(fontSize: 45),)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
