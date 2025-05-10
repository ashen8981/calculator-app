import 'package:flutter/material.dart';

class CalculatorView extends StatelessWidget {
  CalculatorView({super.key});

  final TextEditingController number1Controller = TextEditingController();
  final TextEditingController number2Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MVVM Calculator'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: number1Controller,
              decoration: const InputDecoration(labelText: 'Number 1'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            TextField(
              controller: number2Controller,
              decoration: const InputDecoration(labelText: 'Number 2'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 32),
            Wrap(
              spacing: 10,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('+')),
                ElevatedButton(onPressed: () {}, child: const Text('-')),
                ElevatedButton(onPressed: () {}, child: const Text('×')),
                ElevatedButton(onPressed: () {}, child: const Text('÷')),
              ],
            ),
            const SizedBox(height: 32),
            Text('Result', style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
