import 'package:flutter/material.dart';
import 'package:udemy_flutter/getX/views/CounterOneX.dart';
import 'package:udemy_flutter/getX/views/CounterTwoX.dart';

class DashboardX extends StatelessWidget {
  const DashboardX({super.key});

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
                CounterOneX(),
                 const SizedBox(height: 20,),
                 CounterTwoX(),
                ],
            )
          ]),
        ),
      );
  }
}