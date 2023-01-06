import 'package:flutter/material.dart';
import 'package:udemy_flutter/API/SharedPrefrence.dart';
import 'package:udemy_flutter/API/urlLauncher.dart';

void main() {
  runApp(NewMain());
}


class NewMain extends StatelessWidget {
  const NewMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:SharedPrefrence(),
    );
  }
}
