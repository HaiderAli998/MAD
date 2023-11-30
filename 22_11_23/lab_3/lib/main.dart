import 'package:flutter/material.dart';
import 'package:lab_3/Screen1.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Counter()),
        // Add more providers if needed
      ],
      child: MaterialApp(
        title: 'Navigator',
        home: FirstRoute(),
      ),
    ),
  );
}

class Counter with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}

