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
      title: 'SQLite App',
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

  Future<void> insertItem(MyItem item) async {
    await database.insert(
      'my_items',
      item.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<MyItem>> getItems() async {
    final List<Map<String, dynamic>> maps = await database.query('my_items');

    return List.generate(maps.length, (index) {
      return MyItem(
        id: maps[index]['id'],
        name: maps[index]['name'],
        designation: maps[index]['designation'],
        imageUrl: maps[index]['imageUrl'],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: openDatabase(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return FutureBuilder<List<MyItem>>(
            future: getItems(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  List<MyItem>? items = snapshot.data;
                  return ListView.builder(
                    itemCount: items?.length ?? 0,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(items![index].imageUrl),
                        ),
                        title: Text('Name: ${items[index].name}'),
                        subtitle: Text('Desig: ${items[index].designation}'),
                        trailing: ElevatedButton(
                          onPressed: () {
                            // Handle delete button click
                            // You can remove the item from the database here
                            deleteItem(items[index].id!);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                          ),
                          child: Text('Delete'),
                        ),
                      );
                    },
                  );
                }
              } else {
                return CircularProgressIndicator();
              }
            },
          );
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }

  Future<void> deleteItem(int id) async {
    await database.delete(
      'my_items',
      where: 'id = ?',
      whereArgs: [id],
    );
    setState(() {}); // Refresh the UI after deleting an item
  }
}

class MyItem {
  final int? id;
  final String name;
  final String designation;
  final String imageUrl;

  MyItem({
    this.id,
    required this.name,
    required this.designation,
    required this.imageUrl,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'designation': designation,
      'imageUrl': imageUrl,
    };
  }
}
