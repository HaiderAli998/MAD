import 'package:flutter/material.dart';
import 'package:lab_3/main.dart';
import 'package:lab_3/Screen3.dart';
import 'package:provider/provider.dart';


class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Consumer<Counter>(
          builder: (context, counter, child) => Text('Screen - 2 | Counter: ${counter.count}'),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'Global State Management',
                style: TextStyle(fontSize: 28),
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ThirdRoute()),
                );
              },
              child: const Text('Third Screen'),
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
