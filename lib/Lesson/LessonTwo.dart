import 'package:flutter/material.dart';

class LessonTwo extends StatefulWidget {
  const LessonTwo({super.key});

  @override
  State<LessonTwo> createState() => _LessonTwoState();
}

class _LessonTwoState extends State<LessonTwo> {
  bool _visible = true;
  String _text = 'Hello World';
  // define name controller
  final TextEditingController _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 10.0,
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            child:  TextField(
              controller: _nameController,
              decoration:  InputDecoration(
                border: const OutlineInputBorder(),
                labelText: _text,
                labelStyle: const TextStyle(color: Colors.red),
                hintStyle: const TextStyle(color: Colors.blue),
                hintText: 'Enter your name',
                prefixIcon: const Icon(Icons.person),
                suffixIcon: const Icon(Icons.search),
              ),
              maxLines: 2,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.text,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            child: const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                ),
                labelText: 'Number',
                labelStyle: TextStyle(color: Colors.red),
                hintStyle: TextStyle(color: Colors.blue),
                hintText: 'Enter your Number',
                prefixText: '+91 ',
                suffixText: ' INR',
                icon: Icon(Icons.phone),
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            child: const TextField(
              style: TextStyle(color: Colors.red),
              decoration: InputDecoration(
                fillColor: Colors.yellow,
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 2.0),
                ),
                labelText: 'Email',
                labelStyle: TextStyle(color: Colors.red),
                hintStyle: TextStyle(color: Colors.blue),
                hintText: 'Enter your email',
                prefixIcon: Icon(Icons.person),
                suffixIcon: Icon(Icons.search),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            child: TextField(
              obscureText: _visible,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: 'Password',
                labelStyle: const TextStyle(color: Colors.red),
                hintStyle: const TextStyle(color: Colors.blue),
                hintText: 'Enter your password',
                prefixIcon: const Icon(Icons.person),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _visible = !_visible;
                    });
                  },
                  icon: Icon(
                      _visible ? Icons.remove_red_eye : Icons.visibility_off),
                ),
              ),
              keyboardType: TextInputType.visiblePassword,
            ),
          ),
        const SizedBox(
          height: 10.0,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _text = _nameController.text;
            });
            int birthyear = int.parse(_nameController.text);
            int age = AgeCalculator.calculateAge(birthyear);
            print('Age is $age');
          },
          child: const Text('Submit'),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.red),
            foregroundColor: MaterialStateProperty.all(Colors.yellow),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: const BorderSide(color: Colors.blue, width: 5.0),
              ),
            ),
            splashFactory: NoSplash.splashFactory,
            padding: MaterialStateProperty.all(
              const EdgeInsets.all(40.0),
            ),
          )
          
        ),
        ],
      ),
    );
  }
}
class AgeCalculator {
  static int calculateAge(int birthyear) {
    return DateTime.now().year - birthyear;
  }
}