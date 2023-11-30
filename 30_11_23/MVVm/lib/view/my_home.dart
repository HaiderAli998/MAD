import 'package:flutter/material.dart';
import 'package:mvvm/viewmodel/user_viewmodel.dart';
class Home_View extends StatefulWidget {
  const Home_View({super.key});

  @override
  State<Home_View> createState() => _Home_ViewState();
}

class _Home_ViewState extends State<Home_View> {
  @override
UserVM uservm =UserVM();
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Center(
          child: Column(
            children: [
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                  itemCount: uservm.usermodel.length,
                  itemBuilder: (context,count){
                    return Column(
                      children: [
                        Row(
                          children: [
                            Expanded(child: Text('User-Id : ${uservm.usermodel[count].id}',style: TextStyle(fontSize: 30),)),
                            Expanded(child: Text('User-Name : ${uservm.usermodel[count].name}',style: TextStyle(fontSize: 30),)),
                            Expanded(child: Text('User-Domain : ${uservm.usermodel[count].domain}',style: TextStyle(fontSize: 30),)),
                          ],
                        ),

                      ],
                    );
                  }),
            ],
          ),
        )
    );
  }
}
