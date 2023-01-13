import 'package:flutter/material.dart';
import 'package:udemy_flutter/bloc/controller/CounterBloc.dart';
import 'package:udemy_flutter/bloc/views/DashboardB.dart';
import 'package:provider/src/provider.dart';

class CounterMainB extends StatelessWidget {
  const CounterMainB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          context.read<CounterBloc>().increment();
        },
      ),
      body: Center(child: DashboardB()),
    );
  }
}
