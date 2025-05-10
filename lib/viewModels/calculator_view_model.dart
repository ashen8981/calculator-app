import 'package:flutter/material.dart';
import '../models/calculator_model.dart';

class CalculatorViewModel extends ChangeNotifier {
  CalculatorModel _calculator = CalculatorModel(number1: 0.0, number2: 0.0);
}
