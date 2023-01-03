import 'package:flutter/material.dart';

class LessonFour extends StatelessWidget {
  final String? title;
  LessonFour({super.key, this.title});

  void DatePicker(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime.now(),
    ).then((value) => {
          if (value != null) {print(value)}
        });
  }

  @override
  Widget build(BuildContext context) {
    print(title);
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    print(routeArgs);
    print(routeArgs['title']);
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => DatePicker(context),
              child: const Text('Date Picker', style: TextStyle(fontSize: 20)),
            ),
            Row(
              children: [
                Expanded(
                  child: Image.asset('assets/images/image.png',
                      fit: BoxFit.fill, height: 300),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.teal,
                    child: const Text('Hello', style: TextStyle(fontSize: 20)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.red,
                    child: const Text('Hello', style: TextStyle(fontSize: 20)),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.blue,
                    child: const Text('Hello', style: TextStyle(fontSize: 20)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
