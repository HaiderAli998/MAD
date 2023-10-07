import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World Flutter Application',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: const MyHomePage(title: 'Home page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search Dish or Chef',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.filter_list_alt))
              ],
            ),
            const Column(
              children: [
                Divider(
                  height: 50,
                  color: Colors.grey,
                  thickness: 1,
                ),
                Divider(
                  height: 20,
                  color: Colors.grey,
                  thickness: 1,
                )
              ],
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100, // Adjust this height as needed
                  child: CircleAvatar(
                    radius: 48,
                    backgroundImage: AssetImage('assets/images/Alipic.jpg'),
                  ),
                ),
                SizedBox(width: 16),
                SizedBox(
                  height: 100, // Adjust this height as needed
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Text(
                            "Syed Muhammad Ali",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                      Expanded(
                          child: Text(
                            "Hosten, Texas",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                      Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.red,
                                size: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "3.5",
                                style: TextStyle(color: Colors.red, fontSize: 17),
                              ),
                            ],
                          )),
                      Expanded(
                          child: Text(
                            "8:00 AM to 9:00",
                            style: TextStyle(color: Colors.black),
                          )),
                    ],
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 100, // Adjust this height as needed
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Text(
                              '\$ 20/hour',
                              textAlign: TextAlign.end,
                            )),
                        Expanded(
                            child: Text(
                              '12 KM',
                              textAlign: TextAlign.end,
                            )),
                        Expanded(child: RoundedTextButton()),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class RoundedTextButton extends StatelessWidget {
  const RoundedTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        // Add your button click logic here
      },
      style: TextButton.styleFrom(
        backgroundColor: Colors.orange,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      child: const Text(
        'Click Me',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}