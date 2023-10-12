import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Center(
                child:
                      StatefullCounter()
            ),
          ],
        ),
      )

    )
  ));
}
class StatelessCounter extends StatelessWidget {
  StatelessCounter({super.key});
  int counter=0;
  void myIncrement() {
    counter++;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('$counter'),
          MaterialButton(onPressed: myIncrement,child: Text("Press me"),color: Colors.blue,)
        ],
      ),

    );
  }
}

class StatefullCounter extends StatefulWidget {

  @override
  State<StatefullCounter> createState() => _StatefullCounterState();

}

class _StatefullCounterState extends State<StatefullCounter> {
  int counter=0;
  void myIncrement(){
    counter++;
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('$counter'),
          MaterialButton(onPressed: myIncrement,child: Text("Press me"),)
        ],
      ),

    );
  }
}
