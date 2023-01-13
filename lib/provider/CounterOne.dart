import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemy_flutter/provider/myProvider.dart';

class CounterOne extends StatelessWidget {
  const CounterOne({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
        child: Container(
      width: 150,
      height: 150,
      child:  Center(
          child: Text(
        Provider.of<MyProvider>(context).counter.toString(),
        style: const TextStyle(fontSize: 40),
      )),
    ));
  }
}
