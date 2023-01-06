import 'package:flutter/material.dart';

class GridLesson extends StatelessWidget {
  const GridLesson({super.key});
  List<Widget> Info(BuildContext context) {
    List<Color> colors = [
      Colors.blue,
      Colors.green,
      Colors.yellow,
      Colors.grey
    ];
    List<String> names = ['Blue', 'Green', 'Yellow', 'Red'];
    List<Widget> widgets = [];
    for (int i = 0; i < colors.length; i++) {
      widgets.add(Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              colors[i],
              colors[i].withOpacity(0.8),
              colors[i].withOpacity(0.5)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Text(names[i]),
      ));
    }
    
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          children: Info(context),
        ));
  }
}
