import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

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

class MyList extends StatefulWidget {
  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  late Database database;

  @override
  void initState() {
    super.initState();
    openDatabase();
  }

  Future<void> openDatabase() async {
    database = await openDatabase(
      join(await getDatabasesPath(), 'my_database.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE my_items(id INTEGER PRIMARY KEY, name TEXT, designation TEXT, imageUrl TEXT)',
        );
      },
      version: 1,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      // Use a FutureBuilder to wait for the database to open before rendering the UI
      future: openDatabase(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          // Database is open, you can now build your UI
          return ListView.builder(
            itemCount: 0, // Replace with the actual item count
            itemBuilder: (BuildContext context, int index) {
              // Build your list items here
              return ListTile(
                title: Text('Item $index'),
              );
            },
          );
        } else {
          // Database is still loading, you can show a loading indicator
          return CircularProgressIndicator();
        }
      },
    );
  }
}
