import 'dart:io';

import 'package:flutter/material.dart';
import 'package:udemy_flutter/API/SharedPrefrence.dart';
import 'package:udemy_flutter/API/urlLauncher.dart';
import 'package:udemy_flutter/BMI/bmiHome.dart';

import 'package:image_picker/image_picker.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

void main() {
  runApp(MaterialApp(
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
  final li = List<String>.generate(50, (index) => 'Item No $index');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: li.length,
        itemBuilder: (context, index) => Dismissible(
          background: Container(
            color: Colors.red,
            child: const Icon(Icons.delete),
            alignment: Alignment.centerLeft,
          ),
          secondaryBackground: Container(
            color: Colors.green,
            child: const Icon(Icons.archive),
            alignment: Alignment.centerRight,
          ),
          key: Key(li[index]),
          child: ListTile(
            title: Center(child: Text(li[index])),
          ),
          confirmDismiss: (direction) async {
            if (direction == DismissDirection.endToStart) {
              return await showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Delete'),
                  content: const Text('Are you sure you want to delete?'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(false),
                      child: const Text('No'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(true),
                      child: const Text('Yes'),
                    ),
                  ],
                ),
              );
            } else {
              return await showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Archive'),
                  content: const Text('Are you sure you want to archive?'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(false),
                      child: const Text('No'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(true),
                      child: const Text('Yes'),
                    ),
                  ],
                ),
              );
            }
          },
          onDismissed: (direction) {
            setState(() {
              li.removeAt(index);
              SnackBar sBar = SnackBar(
                  action: SnackBarAction(
                    textColor: Colors.white,
                    label: 'Undo',
                    onPressed: () {
                      setState(() {
                        li.insert(index, 'Item No $index');
                      });
                    },
                  ),
                  content: Text(
                    direction == DismissDirection.endToStart
                        ? 'Item Deleted'
                        : 'Item Archived',
                  ),
                  backgroundColor: direction == DismissDirection.endToStart
                      ? Colors.green
                      : Colors.red,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  duration: const Duration(seconds: 4),
                );
                ScaffoldMessenger.of(context).showSnackBar(sBar);
            });
          },
        ),
      ),
    );
  }
}
