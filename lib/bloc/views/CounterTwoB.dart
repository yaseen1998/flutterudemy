import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';
import 'package:udemy_flutter/getX/controllers/counterController.dart';

class CounterTwoB extends StatelessWidget {
   CounterTwoB({super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
        child: Container(
      width: 150,
      height: 150,
      child:  GetX<CounterController>(
        builder: (_controller)=> Center(
            child: Text(
          _controller.counter.value.toString(),
          style: const TextStyle(fontSize: 40),
        )),
      ),
    ));
  }
}
