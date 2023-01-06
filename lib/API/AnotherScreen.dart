import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AnotherScreen extends StatefulWidget {
  const AnotherScreen({super.key});

  @override
  State<AnotherScreen> createState() => _AnotherScreenState();
}

class _AnotherScreenState extends State<AnotherScreen> {
  String _name = "";
    int _age = 0;
    double _height = 0.0;
    bool _isMarried = false;
    List<String> _hobbies = ["",""];
    @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    deleteDate();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnotherScreen'),
      ),
      body: Center(
        child: DefaultTextStyle(
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
          child: Column(
            children:  [
              Text('Name: $_name'),
              Text('Age: $_age'),
              Text('Height: $_height'),
              Text('Married: $_isMarried'),
              Text('Hobbies 1: ${_hobbies[0]}'),
              Text('Hobbies 2: ${_hobbies[1]}'),
              ElevatedButton( onPressed: ()  { getData(); }, child: const Text('Get Data'), ),
              ElevatedButton( onPressed: ()  { deleteDate(); }, child: const Text('Delete Data'), ),
            ],
          ),
        ),
      ),
    );
  }
  getData(){
    SharedPreferences.getInstance().then((prefs) {
      setState(() {
        _name = prefs.getString('name') ?? '';
        _age = prefs.getInt('age') ?? 0;
        _height = prefs.getDouble('height') ?? 0.0;
        _isMarried = prefs.getBool('isMarried') ?? false;
        _hobbies = prefs.getStringList('hobbies') ?? ["",""];
      });
    });
  }
   deleteDate(){
    SharedPreferences.getInstance().then((prefs) {
      prefs.remove('name');
      prefs.remove('age');
      prefs.remove('height');
      prefs.remove('isMarried');
      prefs.remove('hobbies');
    });
  }
}
