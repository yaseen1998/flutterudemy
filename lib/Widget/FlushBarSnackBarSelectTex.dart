import 'package:flutter/material.dart';
import 'package:udemy_flutter/API/SharedPrefrence.dart';
import 'package:udemy_flutter/API/urlLauncher.dart';
import 'package:udemy_flutter/BMI/bmiHome.dart';

import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:another_flushbar/flushbar_route.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: NewMain(),
  ));
}

class NewMain extends StatelessWidget {
  const NewMain({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _x = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _x,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                SnackBar sBar = SnackBar(
                  action: SnackBarAction(
                    textColor: Colors.white,
                    label: 'Undo',
                    onPressed: () {
                      print('Undo');
                    },
                  ),
                  content: const Text('Hello'),
                  backgroundColor: Colors.red,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  duration: const Duration(seconds: 4),
                );
                ScaffoldMessenger.of(context).showSnackBar(sBar);
                // _x.currentState?.showSnackBar(sBar);
              },
              child: const Text('Show SnackBar'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Flushbar(
                  duration: const Duration(seconds: 3),
                  flushbarPosition: FlushbarPosition.BOTTOM,
                  mainButton: TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Undo'),
                  ),
                  title: 'Hello',
                  messageText: const Text(
                    'This is a message',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                  icon: const Icon(
                    Icons.info_outline,
                    size: 28,
                    color: Colors.blue,
                  ),
                  leftBarIndicatorColor: Colors.blue,
                ).show(context);
              },
              child: const Text('Show FlushBar'),
            ),
          ),
          Container(
            height: 40,
            width: double.infinity,
            color: Colors.red,
            child: const Text(
              'hellohellohellohellohellohellohellohellohellohellohellohellohellohellohello',
              style: TextStyle( color: Colors.white, fontSize: 20, ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox( height: 20, ),
          Container(
            height: 60,
            width: double.infinity,
            color: Colors.red,
            child: const Text(
              'hellohellohellohellohellohellohellohellohe llohellohe llohello hellohell ohello',
              style: TextStyle( color: Colors.white, fontSize: 20, ),
              overflow: TextOverflow.fade,
            ),
          ),
          const SizedBox( height: 20, ),
          Container(
            height: 60,
            width: double.infinity,
            color: Colors.red,
            child: const Text(
              'hellohellohellohellohellohellohellohell ohellohel lohellohell ohellohel lohello',
              style: TextStyle( color: Colors.white, fontSize: 20, ),
              overflow: TextOverflow.visible,
              softWrap: false,
            ),
          ),
          const SizedBox( height: 20, ),
          Container(
            height: 60,
            width: double.infinity,
            color: Colors.red,
            child: const Text(
              'hellohellohellohellohellohellohellohell ohellohelloh ellohellohel lohelloh ello',
              style: TextStyle( color: Colors.white, fontSize: 20, ),
              overflow: TextOverflow.clip,
            ),
          ),
          const SizedBox( height: 20, ),
          const SelectableText("selctabel text",showCursor: true,
          toolbarOptions: ToolbarOptions(copy: true,selectAll: true,cut: true,paste: true),
          cursorColor: Colors.red,
          cursorWidth: 5,
          ),
        ],
      ),
    );
  }
}
