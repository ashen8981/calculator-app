import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/calculator_view_model.dart';

class CalculatorView extends StatelessWidget {
  CalculatorView({super.key});

  final TextEditingController number1Controller = TextEditingController();
  final TextEditingController number2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<CalculatorViewModel>(context);

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
              onChanged: (value) {
                final n1 = double.tryParse(value) ?? 0.0;
                viewModel.setNumber1(n1);
              },
            ),
            const SizedBox(height: 16),
            TextField(
              controller: number2Controller,
              decoration: const InputDecoration(labelText: 'Number 2'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                final n2 = double.tryParse(value) ?? 0.0;
                viewModel.setNumber2(n2);
              },
            ),
            const SizedBox(height: 32),
            Wrap(
              spacing: 10,
              children: [
                ElevatedButton(onPressed: viewModel.add, child: const Text('+')),
                ElevatedButton(onPressed: viewModel.subtract, child: const Text('-')),
                ElevatedButton(onPressed: viewModel.multiply, child: const Text('×')),
                ElevatedButton(onPressed: viewModel.divide, child: const Text('÷')),
              ],
            ),
            const SizedBox(height: 32),
            Text(
              'Result: ${viewModel.result.isNaN ? 'Error' : viewModel.result.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
