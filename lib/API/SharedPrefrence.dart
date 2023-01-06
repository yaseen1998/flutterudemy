import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:udemy_flutter/API/AnotherScreen.dart';

class SharedPrefrence extends StatefulWidget {
  const SharedPrefrence({super.key});

  @override
  State<SharedPrefrence> createState() => _SharedPrefrenceState();
}

class _SharedPrefrenceState extends State<SharedPrefrence> {
  @override
  void initState() {
    // TODO: implement initState
    setData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SharedPrefrence'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: ()  {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AnotherScreen()),
            );
          },
          child: Text('Another Screen'),
        ),
      ),
    );

  }

  setData(){
    SharedPreferences.getInstance().then((prefs) {
      prefs.setString('name', 'Ahmed');
      prefs.setInt('age', 20);
      prefs.setDouble('height', 1.75);
      prefs.setBool('isMarried', false);
      prefs.setStringList('hobbies', ['Reading', 'Writing']);
    });
  }

 
}