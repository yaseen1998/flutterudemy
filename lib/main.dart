import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemy_flutter/ProviderController.dart';
import 'package:udemy_flutter/providerExample.dart';
import 'package:udemy_flutter/test.dart';

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
