import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          padding: const EdgeInsets.only(top: 10.0),
          child: ListView(
            children: [
              buildHeader1(),
              buildHeader2(),
              buildSearchField(),
              buildMainColumn(),
              const SizedBox(height: 15),
              buildMainColumn(),
              const SizedBox(height: 15),
              buildMainColumn()
            ],
          )),
    );
  }
}

Widget buildHeader1() {
  return Container(
    padding: const EdgeInsets.all(10),
    child: const Row(
      children: [
        Text(
          "Near by Location",
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(FontAwesomeIcons.bell, color: Colors.black),
              SizedBox(width: 15),
              Icon(FontAwesomeIcons.shoppingCart, color: Colors.black),
              SizedBox(width: 15),
              Icon(Icons.location_on, color: Colors.black),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget buildHeader2() {
  return Container(
    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
    child: const Row(
      children: [
        Align(
          alignment: Alignment.center,
          child: Row(
            children: [
              Icon(Icons.location_on, color: Colors.deepOrange),
              SizedBox(width: 5),
              Text(
                "Hosten, Texas",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(width: 5),
              Icon(FontAwesomeIcons.locationArrow, color: Colors.deepOrange),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget buildMainColumn() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Column(
        children: [
          buildDivider(height: 30.0),
          buildDivider(height: 20.0),
        ],
      ),
      buildProfileCard(
        imageAsset: 'assets/images/Alipic.jpg',
        name: 'Syed Muhammad Ali',
        location: 'Hosted, Texas',
        rating: 3.5,
        time: '8:00 AM to 9:00',
        rate: '\$ 20/hour',
        distance: '12 KM',
      ),
      const SizedBox(
        height: 10,
      ),
      buildHorizontalCardList(),
    ],
  );
}

Widget buildHorizontalCardList() {
  return SizedBox(
    height: 100,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        buildCard(),
        const SizedBox(width: 10),
        buildCard(),
        const SizedBox(width: 10),
        buildCard(),
        const SizedBox(width: 10),
        buildCard(),
        const SizedBox(width: 10),
        buildCard(),
      ],
    ),
  );
}

Widget buildCard() => SizedBox(
  child: FittedBox(
    fit: BoxFit.cover, // You can adjust BoxFit as needed
    child: Image.asset('assets/images/pizza.jpg'),
  ),
);

Widget buildSearchField() {
  return Container(
    padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
    child: Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search Dish or Chef',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            style: const TextStyle(fontSize: 15.0),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.filter_list_alt),
        ),
      ],
    ),
  );
}

Widget buildDivider({double height = 0.0}) {
  return Divider(
    height: height,
    color: Colors.grey,
    thickness: 1,
  );
}

Widget buildProfileCard({
  required String imageAsset,
  required String name,
  required String location,
  required double rating,
  required String time,
  required String rate,
  required String distance,
}) {
  return SizedBox(
    height: 100.0,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            child: CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage(imageAsset),
            ),
          ),
          const SizedBox(width: 10),
          Container(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  location,
                  style: const TextStyle(
                    fontSize: 10,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.red,
                      size: 15,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      rating.toString(),
                      style: const TextStyle(color: Colors.red, fontSize: 17),
                    ),
                  ],
                ),
                Text(
                  time,
                  style: const TextStyle(color: Colors.black),
                ),
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
                  Text(
                    rate,
                    textAlign: TextAlign.end,
                  ),
                  Text(
                    distance,
                    textAlign: TextAlign.end,
                  ),
                  const RoundedTextButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
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