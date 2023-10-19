import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
      home: Scaffold(
          body: SafeArea(
              child: Center(
                  child: StatelessCounter()
              )
          )
      )
  ));
}

class StatelessCounter extends StatefulWidget {
  @override
  State<StatelessCounter> createState() => _StatelessCounterState();
}

class _StatelessCounterState extends State<StatelessCounter> {
  // const StatelessCounter({super.key});
  int counter = 0;
  Color myColor = Colors.red;

  void myIncrement(){

    counter++;
    myColor = Colors.yellow;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            DisplayText(counter: counter),
            MaterialButton(
                child: Text("Press Me"),
                onPressed: (){setState(() {
                });
                myIncrement();},
                color: myColor
            )
          ],      )
    );
  }
}

class DisplayText extends StatelessWidget {
  const DisplayText({required this.counter});

  final int counter;

  @override
  Widget build(BuildContext context) {
    return Text("$counter");
  }
}