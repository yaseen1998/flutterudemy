import 'package:flutter/material.dart';

class ButtonLesson extends StatelessWidget {
  const ButtonLesson({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            TextButton(
              onPressed: () {},
              child: const Text('Text Button'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Elevated Button'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Outlined Button'),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        const SizedBox(height: 20.0),
        Row(
          children: [
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('Text Button'),
              autofocus: true,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('Elevated Button'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
                foregroundColor: MaterialStateProperty.all(Colors.yellow),
                overlayColor: MaterialStateProperty.all(Colors.green),
                shadowColor: MaterialStateProperty.all(Colors.blue),
                elevation: MaterialStateProperty.all(10.0),
                padding: MaterialStateProperty.all(const EdgeInsets.all(20.0)),
                minimumSize: MaterialStateProperty.all(const Size(200.0, 50.0)),
                shape: MaterialStateProperty.all(const StadiumBorder()),
              ),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('Outlined Button'),
            ),
          ],
        ),
      ],
    );
  }
}
