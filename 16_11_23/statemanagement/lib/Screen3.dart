import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/main.dart';
class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  int increment =0;
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Align(alignment:Alignment.center,child:
      Column(
        children: [
          Text(Provider.of<DataProvider>(context,listen: false).counter.toString(),style: TextStyle(fontSize: 20),),
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
      )
      )
    );
  }
}
