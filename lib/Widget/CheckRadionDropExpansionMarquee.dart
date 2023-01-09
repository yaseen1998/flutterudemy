import 'package:flutter/material.dart';
import 'package:udemy_flutter/API/SharedPrefrence.dart';
import 'package:udemy_flutter/API/urlLauncher.dart';
import 'package:udemy_flutter/BMI/bmiHome.dart';

import 'package:marquee/marquee.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
      canvasColor: Colors.white,
    ),
    darkTheme: ThemeData(
      // brightness: Brightness.dark,
      primarySwatch: Colors.green,
      canvasColor: Colors.black,
    ),
    themeMode: ThemeMode.light,
    home: NewMain(),
  ));
}

class NewMain extends StatefulWidget {
  const NewMain({super.key});

  @override
  State<NewMain> createState() => _NewMainState();
}

class _NewMainState extends State<NewMain> {
  int _radioValue = 0;
  int _radioValue2 = 0;
  bool _checkboxValue = false;
  bool _checkboxValue2 = false;
  String Result = '';
  Color resultColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio & Checkbox'),
      ),
      body: Container(
        color: resultColor,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio(
                      value: 3,
                      groupValue: _radioValue,
                      onChanged: (value) {
                        setState(() {
                          _radioValue = int.parse(value.toString());
                          Result = 'You are Underweight';
                          resultColor = Colors.red;
                        });
                      }),
                  Radio(
                      value: 2,
                      groupValue: _radioValue,
                      onChanged: (value) {
                        setState(() {
                          _radioValue = int.parse(value.toString());
                          Result = 'You are Underweight';
                          resultColor = Colors.green;
                        });
                      }),
                  Radio(
                      value: 1,
                      groupValue: _radioValue,
                      onChanged: (value) {
                        setState(() {
                          _radioValue = int.parse(value.toString());
                          Result = 'You are Underweight';
                          resultColor = Colors.yellow;
                        });
                      }),
                Checkbox(
                    value: !_checkboxValue,
                    onChanged: (value) {
                      setState(() {
                        _checkboxValue = !_checkboxValue;
                        Result = 'You are Underweight';
                        resultColor = Colors.greenAccent;
                      });
                    }),
                Checkbox(
                    value: _checkboxValue,
                    onChanged: (value) {
                      setState(() {
                        _checkboxValue = !_checkboxValue;
                        Result = 'You are Underweight';
                        resultColor = Colors.blueAccent;
                      });
                    }),
                    DropdownButton(
              items: const [
                DropdownMenuItem(
                  value: 1,
                  child: Text('Item 1'),
                ),
                DropdownMenuItem(
                  value: 2,
                  child: Text('Item 2'),
                ),
                DropdownMenuItem(
                  value: 3,
                  child: Text('Item 3'),
                ),
              ],
              onChanged: (value) {
                print(value);
                setState(() {
                  Result = 'You are Underweight';
                  resultColor = Colors.purple;
                });
              },
              hint: Text('Select Item'),
            ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            RadioListTile(
              secondary: const Icon(Icons.access_alarm),
              title: const Text('RadioListTile'),
              selectedTileColor: Colors.red,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              subtitle: const Text('RadioListTile'),
              isThreeLine: true,
              activeColor: Colors.green,
              value: 1,
              groupValue: _radioValue2,
              onChanged: (value) {
                setState(() {
                  _radioValue2 = int.parse(value.toString());
                  Result = 'You are Underweight';
                  resultColor = Colors.red;
                });
              },
            ),
            RadioListTile(
              secondary: const Icon(Icons.access_alarm),
              title: const Text('RadioListTile'),
              selectedTileColor: Colors.yellow,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              subtitle: const Text('RadioListTile'),
              isThreeLine: true,
              activeColor: Colors.black,
              value: 2,
              groupValue: _radioValue2,
              onChanged: (value) {
                setState(() {
                  _radioValue2 = int.parse(value.toString());
                  Result = 'You are Underweight';
                  resultColor = Colors.orange;
                });
              },
            ),
            const SizedBox(
              height: 5,
            ),
           
            CheckboxListTile(
              secondary: const Icon(Icons.access_alarm),
              title: const Text('CheckboxListTile'),
              selectedTileColor: Colors.red,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              subtitle: const Text('CheckboxListTile'),
              isThreeLine: true,
              activeColor: Colors.green,
              value: _checkboxValue2,
              onChanged: (value) {
                setState(() {
                  _checkboxValue2 = !_checkboxValue2;
                  Result = 'You are Underweight';
                  resultColor = Colors.pink;
                });
              },
            ),
            CheckboxListTile(
              secondary: const Icon(Icons.access_alarm),
              title: const Text('CheckboxListTile'),
              selectedTileColor: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              subtitle: const Text('CheckboxListTile'),
              isThreeLine: true,
              activeColor: Colors.green,
              value: !_checkboxValue2,
              onChanged: (value) {
                setState(() {
                  _checkboxValue2 = !_checkboxValue2;
                  Result = 'You are Underweight';
                  resultColor = Colors.pinkAccent;
                });
              },
            ),
          const ExpansionTile(title: 
          Text('ExpansionTile'),
          backgroundColor: Colors.grey,
          leading: Icon(Icons.message),
          children: [
            ListTile(
              title: Text('data1'),
              subtitle: Text('data2'),
              leading: Icon(Icons.access_alarm),
              trailing: Icon(Icons.menu),
            ),
            Divider(
              color: Colors.black,
              thickness: 2,
            ),
            Card(
              color: Colors.green,
              child: ListTile(
                title: Text('data11'),
                subtitle: Text('data21'),
              ),
            ),
          ],
          ),
          SizedBox(
            height: 40,
            child: Card(
              color: Colors.green,
              child: Marquee(text: 'hello world',
              blankSpace: 20,
              scrollAxis: Axis.vertical,
              accelerationDuration: Duration(seconds: 1),
              ))
          ),
          SizedBox(
            height: 40,
            child: Card(
              color: Colors.green,
              child: Marquee(text: 'hello world',
              blankSpace: 50,
              crossAxisAlignment: CrossAxisAlignment.start,
              accelerationDuration: Duration(seconds: 2),
              // pauseAfterRound: Duration(seconds: 1),
              ))
          )

          ],
        ),
      ),
    );
  }
}
