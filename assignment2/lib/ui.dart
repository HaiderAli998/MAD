import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SqLite App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('SQLite App'),
        ),
        body: MyList(),
      ),
    );
  }
}

class MyList extends StatelessWidget {
  final List<MyItem> items = [
    MyItem('John Doe', 'Developer', 'assets/avatar1.png'),
    MyItem('Jane Smith', 'Designer', 'assets/avatar2.png'),
    MyItem('Bob Johnson', 'Manager', 'assets/avatar3.png'),
    MyItem('Alice Brown', 'Engineer', 'assets/avatar4.png'),
    MyItem('Chris Davis', 'Analyst', 'assets/avatar5.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(items[index].imageUrl),
          ),
          title: Text('Name: ${items[index].name}'),
          subtitle: Text('Desig: ${items[index].designation}'),
          trailing: ElevatedButton(
            onPressed: () {
              // Handle delete button click
              // You can remove the item from the list or perform any other action here
              print('Delete clicked for ${items[index].name}');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            child: Text('Delete'),
          ),
        );
      },
    );
  }
}

class MyItem {
  final String name;
  final String designation;
  final String imageUrl;

  MyItem(this.name, this.designation, this.imageUrl);
}