import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/main.dart';
class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  int increment = 0;
  int provider =0;
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Align(alignment:Alignment.center,child:
      Column(
        children: [
          Text(Provider.of<DataProvider>(context,listen: false).counter.toString()),
          MaterialButton(onPressed: (){
            increment = Provider.of<DataProvider>(context,listen: false).counter++;
            setState(() {
              increment++;
              Provider.of<DataProvider>(context,listen: false).myNotifier(increment);
            });
          },
          child:Text('State Management'),
            color: Colors.black12,

          )
        ],
      )),
    );
  }
}
