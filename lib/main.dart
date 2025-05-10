import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'viewmodels/calculator_view_model.dart';
import 'views/calculator_view.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (_) => CalculatorViewModel(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, title: 'MVVM Calculator', home: CalculatorView());
  }
}
