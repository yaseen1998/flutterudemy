import 'package:flutter/material.dart';

class MyProvider with ChangeNotifier {
  int counter = 0;
  void increment() {
    counter++;
    notifyListeners();
  }
}
