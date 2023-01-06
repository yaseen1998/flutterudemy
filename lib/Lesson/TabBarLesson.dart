import 'package:flutter/material.dart';

class TabBarLesson extends StatelessWidget {
  const TabBarLesson({super.key});

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('TabBar Lesson'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.directions_car),
                  text: 'Car',
                ),
                Tab(
                  icon: Icon(Icons.directions_transit),
                  text: 'Transit',
                ),
                Tab(
                  icon: Icon(Icons.directions_bike),
                  text: 'Bike',
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Center(
                child: Text('Car'),
              ),
              Center(
                child: Text('Transit'),
              ),
              Center(
                child: Text('Bike'),
              ),
            ],
          ),
        ),
    );
  }
}