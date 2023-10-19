import 'package:flutter/material.dart';
import 'package:scaffold_pages/pages/TabBarItem1.dart';
import 'package:scaffold_pages/pages/TabBarItem2.dart';
import 'package:scaffold_pages/pages/TabBarItem3.dart';
class ScaffoldWidget extends StatelessWidget{
  const ScaffoldWidget({Key?key}):super(key: key);
  @override
  Widget build(BuildContext context) {
        return DefaultTabController(
          length:3,
          child: Scaffold(
            body:
            TabBarView(
              children: [
                Item1(),
                Item2(),
                Item3()
              ],
            )
            ,

            appBar: AppBar(
              bottom:
              TabBar(
                tabs: [
                  Tab(text:"Home"),
                  Tab(text: "About"),
                  Tab(text: "Help")
                ],
              ),
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

                ),Divider(),
                GestureDetector(child: Text('Logout'),onTap: (){
                  print("Gesture Detector on click");
                },)],
              )
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.access_alarm_outlined),label: "hello"),
                BottomNavigationBarItem(icon: Icon(Icons.access_alarm_outlined),label: "hello2"),
                BottomNavigationBarItem(icon: Icon(Icons.access_alarm_outlined),label: "hello3"),
              ],
            ),
          ),
        );
  }

}