import 'package:flutter/material.dart';
import 'package:udemy_flutter/bloc/views/CounterOneB.dart';

class DashboardB extends StatelessWidget {
  const DashboardB({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
            elevation: 10,
        child: Container(
          width: 400,
          height: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const Text(
              'DashBoard',
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 20,),
            Row(
              
              children: [
                CounterOneB(),
                 const SizedBox(height: 20,),
                ],
            )
          ]),
        ),
      );
  }
}