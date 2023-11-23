import 'package:flutter/material.dart';
import 'package:lab_3/main.dart';
import 'package:provider/provider.dart';

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen - 3'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    'Global State Management',
                    style: TextStyle(fontSize: 28),
                    textAlign: TextAlign.center,
                  ),
                  Consumer<Counter>(
                    builder: (context, counter, child) => Text(
                      'Counter: ${counter.count}',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<Counter>(context, listen: false).increment();
              },
              child: const Text('Increment Counter'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Move back!'),
            ),
          ],
        ),
      ),
    );
  }
}
