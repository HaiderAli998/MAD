import 'package:flutter/material.dart';
import 'package:statemanagement/Screen1.dart';
import 'package:statemanagement/Screen2.dart';
import 'package:statemanagement/Screen3.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(
      MultiProvider(
        providers: [ChangeNotifierProvider(create:(_)=>DataProvider() )],
        child: MaterialApp(
                            home:MyHome(),
      ),
  )
  );
}
class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(child: Screen1()),
                Expanded(child: Screen2()),
                Expanded(child: Screen3()),
              ],
            )
          ,
        ),
      )

    );
  }
}

class DataProvider extends ChangeNotifier{
  int counter =0;
  void myNotifier(int providerCounter){
    counter = providerCounter;
    notifyListeners();
  }
}
