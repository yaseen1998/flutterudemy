import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_flutter/bloc/controller/CounterBloc.dart';


class CounterOneB extends StatelessWidget {
   CounterOneB({super.key});
  @override
  Widget build(BuildContext context) {
    
     return Card(
      elevation: 6,
      child: Container(
        width: 150,
        height: 150,
        child:BlocBuilder<CounterBloc,int>(
          builder:(context, count) =>  Center(
                child: Text(
              count.toString(),
              style: const TextStyle(fontSize: 40),
            ),),
        ),
      ),
    );
  }
}
