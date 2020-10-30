import 'package:flutter/material.dart';

class ProblemProvider with ChangeNotifier {
  int _counter = 0;
  int getCounter() => _counter;
  void addCounter() {
    _counter++;
    notifyListeners();
  }
}
