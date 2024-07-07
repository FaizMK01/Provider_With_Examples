import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/Provider/CounterProvider.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counterProvider =
        Provider.of<CounterProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Counter Page",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<CounterProvider>(
              builder: (context, counterProvider, child) {
            return Text(
              counterProvider.number.toString(),
              style: TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
              ),
            );
          }),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  counterProvider.decreaseValue();
                },
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.deepPurple),
                child: const Text(
                  "Decrease",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  counterProvider.increaseValue();
                },
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.deepPurple),
                child: const Text(
                  "Increase",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
