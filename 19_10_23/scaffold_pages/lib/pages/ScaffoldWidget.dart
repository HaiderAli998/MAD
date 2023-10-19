import 'package:flutter/material.dart';
class ScaffoldWidget extends StatelessWidget{
  const ScaffoldWidget({Key?key}):super(key: key);
  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightBlue,
            title: Text("My App"),
            actions:[
              Padding(
                padding: const EdgeInsets.only(right:20.0),
                child: Icon(Icons.notes_sharp),
              ),
              Padding(
                padding: const EdgeInsets.only(right:20.0),
                child: Icon(Icons.notes_sharp),
              ),
              Padding(
                padding: const EdgeInsets.only(right:20.0),
                child: Icon(Icons.notes_sharp),
              )
            ],

          ),
          drawer: Drawer(
            child:ListView(
              children:[UserAccountsDrawerHeader(
                accountName: Text("Haider"),
                accountEmail: Text("haider.ha.ali1@gmail.com"),
                currentAccountPicture: CircleAvatar(child:Icon(Icons.access_alarm,size:15)),
              ),
              ListTile(
                title:
                  Text("Home"),
                subtitle: Text('Home for rent'),
              leading:
                  Icon(Icons.house),
                onTap: (){
                  print('Tab on ListTile');
                },

              ),Divider(),],
            )
          ),
        );
  }

}