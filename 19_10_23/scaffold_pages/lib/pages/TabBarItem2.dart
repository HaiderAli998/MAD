import 'package:flutter/material.dart';
class Item2 extends StatelessWidget {
  const Item2({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text("Tab Item 2"),leading: Icon(Icons.alarm_off_sharp),);
  }
}
