import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemy_flutter/provider/ProviderController.dart';
import 'package:udemy_flutter/provider/providerExample.dart';
import 'package:udemy_flutter/provider/test.dart';

void main() {
  // Get.put(CounterController());
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home:
        MultiProvider(
          providers:[
         ChangeNotifierProvider<ProviderController>(
          create: (_) => ProviderController(),)
        ] ,
          child: ProviederExample(),
        ),
    ),
  );

}
