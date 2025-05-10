import 'package:flutter/material.dart';
import '../models/calculator_model.dart';

class CalculatorViewModel extends ChangeNotifier {
  final CalculatorModel _calculator = CalculatorModel(number1: 0.0, number2: 0.0);

  double get number1 => _calculator.number1;
  double get number2 => _calculator.number2;
  double get result => _calculator.result;

  void setNumber1(double value) {
    _calculator.number1 = value;
    notifyListeners();
  }

  void setNumber2(double value) {
    _calculator.number2 = value;
    notifyListeners();
  }

  void add() {
    _calculator.result = _calculator.number1 + _calculator.number2;
    notifyListeners();
  }

  void subtract() {
    _calculator.result = _calculator.number1 - _calculator.number2;
    notifyListeners();
  }

  void multiply() {
    _calculator.result = _calculator.number1 * _calculator.number2;
    notifyListeners();
  }

  void divide() {
    if (_calculator.number2 != 0) {
      _calculator.result = _calculator.number1 / _calculator.number2;
    } else {
      _calculator.result = double.nan;
    }
    notifyListeners();
  }
}
