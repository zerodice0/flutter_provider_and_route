import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  int _counter = 0;
  int getCounter() => _counter;
  void addCounter() {
    _counter++;
    notifyListeners();
  }
}
