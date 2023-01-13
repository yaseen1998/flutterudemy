import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemy_flutter/provider/Dashboard.dart';
import 'package:udemy_flutter/provider/myProvider.dart';

class CounterMain extends StatelessWidget {
  const CounterMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Provider.of<MyProvider>(context,listen: false).increment();
        },
      ),
      body: Center(child: Dashboard()),
    );
  }
}