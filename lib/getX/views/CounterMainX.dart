import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:udemy_flutter/getX/controllers/counterController.dart';
import 'package:udemy_flutter/getX/views/DashboardX.dart';

class CounterMainX extends StatelessWidget {
  CounterMainX({super.key});
  final CounterController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          _controller.increment();
        },
      ),
      body: Center(child: DashboardX()),
    );
  }
}
