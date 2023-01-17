import 'package:flutter/material.dart';
import 'dart:math';

import 'package:page_transition/page_transition.dart';
import 'package:like_button/like_button.dart';

class AnimationLesson extends StatefulWidget {
  const AnimationLesson({super.key});

  @override
  State<AnimationLesson> createState() => _AnimationLessonState();
}

class _AnimationLessonState extends State<AnimationLesson>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true, min: 0);
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
              Transform.scale(
                scale: 3,
                //  child: ButtonTransition(width: _controller),
                child: AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    return Transform.rotate(
                      angle: _controller.value * 2 * pi,
                      child: child,
                    );
                  },
                  child: ButtonTransition(width: _controller),
                ),
              ),
              const SizedBox(height: 100),
              Container(
                height: 200,
                width: 200,
                child: const FadeInImage(
                  image: NetworkImage('https://picsum.photos/200/300'),
                  placeholder: AssetImage('assets/images/image.png'),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FlutterPAge()),
                  );
                },
                child: const Hero(
                  tag: "to_flutter",
                  child: const FlutterLogo(size: 100),
                )
              ),
            const SizedBox(height: 100),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.rotate,
                    duration: const Duration(seconds: 1),
                    alignment: Alignment.bottomCenter,
                    child: const FlutterPAge(),
                  ),
                );
              },
              icon: const Icon(Icons.arrow_forward),
              label: const Text('Go to Flutter'),
            ),
            
            const SizedBox(height: 30),
            LikeButton(
              size: 50,
              circleColor: CircleColor(start: Colors.red, end: Colors.redAccent),
              bubblesColor: BubblesColor(
                dotPrimaryColor: Colors.red,
                dotSecondaryColor: Colors.redAccent,
              ),
              likeBuilder: (bool isLiked) {
                return Icon(
                  Icons.favorite,
                  color: isLiked ? Colors.red : Colors.grey,
                  size: 50,
                );
              },
              likeCount: 665,
              countBuilder: (int? count, bool isLiked, String text) {
                var color = isLiked ? Colors.deepPurpleAccent : Colors.grey;
                Widget result;
                if (count == 0) {
                  result = Text(
                    "love",
                    style: TextStyle(color: color),
                  );
                } else {
                  result = Text(
                    text,
                    style: TextStyle(color: color),
                  );
                }
                return result;
              },
            ),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonTransition extends AnimatedWidget {
  const ButtonTransition({width}) : super(listenable: width);
  Animation<double> get width => listenable as Animation<double>;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      child: const Text('Click me'),
      onPressed: () {},
      style: OutlinedButton.styleFrom(side: BorderSide(width: width.value)),
    );
  }
}

class FlutterPAge extends StatelessWidget {
  const FlutterPAge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter')),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            child: const Center(
              child: Hero(tag: "to_flutter", child: FlutterLogo(size: 100)),
            ),
          )
        ],
      ),
    );
  }
}
