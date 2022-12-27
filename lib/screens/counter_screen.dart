import 'package:flutter/material.dart';

import 'package:counter_app/screens/custom_floating_action_button.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    const double textSize = 30;

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("CounterScreen"),
        ),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Clicks Counter', style: TextStyle(fontSize: textSize)),
            Text('$counter', style: const TextStyle(fontSize: textSize)),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActions(
        increaseFn: () => setState(() => counter++),
        decreaseFn: () => setState(() => counter--),
        restartFn: () => setState(() => counter = 0),
      ),
    );
  }
}
