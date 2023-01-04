import 'package:flutter/material.dart';

class SliderLesson extends StatefulWidget {
  const SliderLesson({super.key});

  @override
  State<SliderLesson> createState() => _SliderLessonState();
}

class _SliderLessonState extends State<SliderLesson> {
  double _sliderValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Slider(
            value: _sliderValue,
            min: 0.0,
            max: 100.0,
            onChanged: (value) {
              setState(() {
                _sliderValue = value;
              });
            },
          ),
          Text(_sliderValue.toString()),
          Transform.rotate(angle: _sliderValue, child: const Icon(Icons.ac_unit)),
          Transform.scale(scale: _sliderValue/100, child: const Icon(Icons.ac_unit)),
          Transform.translate(offset: Offset(_sliderValue, _sliderValue), child: const Icon(Icons.ac_unit)),
          Transform(transform: Matrix4.skewX(_sliderValue), child: const Icon(Icons.ac_unit)),
          Transform(transform: Matrix4.skewY(_sliderValue), child: const Icon(Icons.access_alarm)),
          Transform(transform: Matrix4.skewY(_sliderValue)..rotateZ(_sliderValue), child: const Icon(Icons.access_alarm)),
        ],
      ),
    );
  }
}