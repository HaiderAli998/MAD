import 'package:flutter/material.dart';
// Name:Haider Ali
// SAP ID:70069779
void main() {
  runApp(MaterialApp(
      title: "Asign1",
      debugShowCheckedModeBanner: false, // remove the debug in appbar
      home: Scaffold(
          body: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 40.0, 16.0, 0.0),
                  child: Column(children: [
                    //the search field and icon
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search Dish or Chef',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.filter_list_alt))
                      ],
                    ),
                    const Column(
                      children: [
                        Divider(
                          height: 40, // divider underneath the search field
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
                    Container(
                        child: Column(
                          // patricia 1 whole box

                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment
                                  .start, // used for aligning image and name heights

                              children: [
                                //top row with circular image and name and button
                                CircleAvatar(
                                  radius: 38,
                                  backgroundImage:
                                  AssetImage('assets/img/3135715.png'),
                                ),
                                // second container in first row with name and details
                                SizedBox(width: 16),
                                SizedBox(
                                  height: 100, // Adjust this height as needed
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          child: Text(
                                            "Patricia Luke",
                                            style: TextStyle(
                                                fontSize: 18, fontWeight: FontWeight.bold),
                                          )),
                                      Expanded(
                                          child: Text(
                                            "Hoston, Texas",
                                            style: TextStyle(
                                              fontSize: 13,
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
                                                size: 18,
                                              ),
                                              SizedBox(
                                                width: 2,
                                              ),
                                              Text(
                                                "3.5",
                                                style: TextStyle(color: Colors.red, fontSize: 14),
                                              ),
                                            ],
                                          )),
                                      Expanded(
                                          child: Text(
                                            "8:00 AM to 9:00 AM",
                                            style: TextStyle(color: Colors.black, fontSize: 10),
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
                                              style: TextStyle(color: Colors.grey, fontSize: 14),
                                              textAlign: TextAlign.end,
                                            )),
                                        Expanded(
                                            child: Text(
                                              '1.2 KM',
                                              style: TextStyle(color: Colors.grey, fontSize: 12),
                                              textAlign: TextAlign.end,
                                            )),
                                        Expanded(child: RoundedTextButton()),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),// end row that has name details and profile
                            // start row that has multiple images
                            Row(
                              children: [
                                Expanded(
                                    child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Wrap(direction: Axis.horizontal,
                                          children: [
                                            SizedBox(height: 100,width:100,child:Image.asset('assets/img/img1.jpg',fit: BoxFit.contain)),
                                            SizedBox(height: 100,width:100,child:Image.asset('assets/img/img2.jpg',fit: BoxFit.contain)),
                                            SizedBox(height: 100,width:100,child:Image.asset('assets/img/img3.jpg',fit: BoxFit.contain)),
                                            SizedBox(height: 100,width:100,child:Image.asset('assets/img/wd2.jpg',fit: BoxFit.contain))
                                          ],)))

                              ],
                            )
                          ],
                        )),
//any other row for box goes here
                  ])),
            ],
          ))));
}
class RoundedTextButton extends StatelessWidget {
  const RoundedTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        backgroundColor: Colors.orange,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      child: const Text(
        'Call',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
