import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.grey,
        body:SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              color: Colors.blue,
              child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        width: 100,
                        color: Colors.brown,
                      ),
                    ),


                    Expanded(
                      child: Container(
                        width: 100,
                        color: Colors.black,
                      ),
                    ),


                    Expanded(
                      child: Container(
                        width: 100,
                        color: Colors.brown,
                      ),
                    )
                  ],

                )
            )
          )
        )

      )
    )
  );
}
