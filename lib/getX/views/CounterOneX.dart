import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemy_flutter/provider/myProvider.dart';
import 'package:get/get.dart';
import 'package:udemy_flutter/getX/controllers/counterController.dart';

class CounterOneX extends StatelessWidget {
   CounterOneX({super.key});
  final CounterController _controller = Get.find();
  @override
  Widget build(BuildContext context) {
    var getBuilder = GetBuilder<CounterController>(
        init: _controller,
        builder: (_)=> Center(
            child: Text(
          _controller.counter.toString(),
          style: const TextStyle(fontSize: 40),
        )),
      ); // with first condition in controller
     return Card(
      elevation: 6,
      child: Container(
        width: 150,
        height: 150,
        child: Obx(
          () => Center(
              child: Text(
            _controller.counter.value.toString(),
            style: const TextStyle(fontSize: 40),
          ),),
        ),
      ),
    );
  }
}
