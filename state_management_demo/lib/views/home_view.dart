import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/counter_view_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final counterViewModel = context.watch<CounterViewModel>();

    return Scaffold(
      appBar: AppBar(title: const Text('State Management Demo')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Counter Value:'),
            Text(
              '${counterViewModel.counter}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: counterViewModel.decrement,
                ),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: counterViewModel.increment,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
