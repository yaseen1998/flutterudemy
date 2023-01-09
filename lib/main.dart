import 'package:flutter/material.dart';



void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    home: NewMain(),
  ));
}

class NewMain extends StatefulWidget {
  const NewMain({super.key});

  @override
  State<NewMain> createState() => _NewMainState();
}

class _NewMainState extends State<NewMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: null );
  }
}
