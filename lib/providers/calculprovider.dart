import 'package:flutter/material.dart';

class CalculProvider with ChangeNotifier {
  String _result = "";

  String get result => _result;

  void add(res) {
    _result += res;
    notifyListeners();
  }

  void clear() {
    _result = "";
    notifyListeners();
  }

  void delete() {
    _result = _result.substring(0, _result.length - 1);
    notifyListeners();
  }
}
