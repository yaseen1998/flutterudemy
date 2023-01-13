import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';
import 'package:udemy_flutter/bloc/controller/CounterBloc.dart';
import 'package:udemy_flutter/bloc/views/CounterMainB.dart';
import 'package:udemy_flutter/getX/controllers/counterController.dart';
import 'package:udemy_flutter/getX/views/CounterMainX.dart';
import 'package:udemy_flutter/provider/CounterMain.dart';
import 'package:udemy_flutter/provider/Dashboard.dart';
import 'package:udemy_flutter/provider/myProvider.dart';

void main() {
  // Get.put(CounterController());
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // home: ChangeNotifierProvider<MyProvider>(
      //   create: (context) => MyProvider(),
      //   child: const CounterMain(),
      // ),
      // home: CounterMainX()
      home: BlocProvider(
        create: (_) => CounterBloc(),
        child: CounterMainB(),
      ),
     
    ),
  );
}
