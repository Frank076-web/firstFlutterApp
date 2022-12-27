import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const double textSize = 30;
    int counter = 0;

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("HomeAppBar"),
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
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => counter++,
      ),
    );
  }
}
