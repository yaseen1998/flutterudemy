import 'dart:math';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:udemy_flutter/Info.dart';

class LessonThree extends StatelessWidget {
   LessonThree({super.key});

  final name1 = Info(name: 'name', date: DateTime.now());
  List<Info> li = [
    Info(name: 'name', date: DateTime.now()),
    Info(name: 'name2', date: DateTime.now()),
    Info(name: 'name3', date: DateTime.now()),
    Info(name: 'name4', date: DateTime.now()),
    Info(name: 'name5', date: DateTime.now()),
    Info(name: 'name6', date: DateTime.now()),
    Info(name: 'name7', date: DateTime.now()),
    Info(name: 'name8', date: DateTime.now()),
    Info(name: 'name9', date: DateTime.now()),
    Info(name: 'name10', date: DateTime.now()),
  ];
  void modalBottom(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (bctx) {
          return SizedBox(
            width: 200.0,
            child: ListView.builder(
              itemCount: li.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color:Theme.of(context).primaryColor,
                        // Colors.blue[[200, 400, 600, 800][Random().nextInt(4)]],
                    shadowColor: Colors
                        .orange[[200, 400, 600, 800][Random().nextInt(4)]],
                    elevation: 10.0,
                    child: ListTile(
                      title: Text(li[index].name),
                      subtitle: Text(DateFormat('yy/MM/dd').format(li[index].date)),
                    ),
                  ),
                );
              },
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => modalBottom(context),
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text('Udemy Flutter'),
      ),
      body: Container(
        color: Color.fromARGB(255, 219, 28, 28),
        width: double.infinity,
        child: Row(
          children: [
            SizedBox(
              width: 200.0,
              child: ListView(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...li
                      .map((e) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              color: Colors.yellow[[
                                200,
                                400,
                                600,
                                800
                              ][Random().nextInt(4)]],
                              shadowColor: Colors.green[[
                                200,
                                400,
                                600,
                                800
                              ][Random().nextInt(4)]],
                              elevation: 10.0,
                              child: ListTile(
                                title: Text(e.name),
                                subtitle: Text(e.date.toString()),
                              ),
                            ),
                          ))
                      .toList(),
                ],
              ),
            ),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
    );
  }
}
