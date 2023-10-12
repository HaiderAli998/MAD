import 'package:flutter/material.dart';
// Name:Haider Ali
// SAP ID:70069779
void main() {
  runApp(MaterialApp(
      title: "Asign1",
      debugShowCheckedModeBanner: false, // remove the debug in appbar
      home: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 40.0, 16.0, 0.0),
                    child: Column(children: [
                      //the search field and icon
                      makeSearchField(),
                      Divider(
                        height: 20, // divider underneath the search field
                        color: Colors.grey,
                        thickness: 1,
                      ),
                      makeOneRow()
                      ,
                      makeOneRow(),
                      makeOneRow()
//any other row for box goes here
                    ])),
              ],
            ),
          ))));
}

Column makeOneRow() {
  return Column(
    children: [
      Divider(
        height: 20,
        color: Colors.grey,
        thickness: 1,
      ),
      makeProfRow(),
      Divider( // end of the whole complete row
        height: 20,
        color: Colors.grey,
        thickness: 1,
      ),
    ],
  );
}

Row makeSearchField() {
  return Row(
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
  );
}

Container makeProfRow() {
  return Container(
      child: Column(
        // patricia 1 whole box

        children: [
          setProfileDetails('assets/img/3135715.png',"Patricia Luke","Hoston, Texas","3.5","8:00 AM to 9:00 AM",20,1.2),// end row that has name details and profile
          // start row that has multiple images
          setPicScroll('assets/img/img1.jpg','assets/img/img2.jpg','assets/img/img3.jpg','assets/img/wd2.jpg')
        ],
      )
  );
}

Row setPicScroll(String img1,String img2,String img3,String img4) {
  return Row(
    children: [
      Expanded(
          child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(direction: Axis.horizontal,
                spacing: 16.0,  // Adjust the spacing value as needed
                children: [
                  imageBox(img1),
                  imageBox(img2),
                  imageBox(img3),
                  imageBox(img4)
                ],)))

    ],
  );
}

Row setProfileDetails(String picPath,String name,String loc,String rating,String tim,int price,double d) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment
        .start, // used for aligning image and name heights

    children: [
      //top row with circular image and name and button
      profilePic(picPath),
      // second container in first row with name and details
      SizedBox(width: 16),
      SizedBox(
        height: 100, // Adjust this height as needed
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            setProfName(name),
            setLocation( loc),
            Expanded(
                child: setRating(rating)),
            setTiming(tim),
          ],
        ),
      ),
      priceAndDist(price,d),
    ],
  );
}

Expanded setTiming(String tim) {
  return Expanded(
      child: Text(
        tim,
        style: TextStyle(color: Colors.black, fontSize: 10),
      ));
}

Row setRating(String rat) {
  return Row(
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
        rat.toString(),
        style: TextStyle(color: Colors.red, fontSize: 14),
      ),
    ],
  );
}

Expanded setLocation(String loc) {
  return Expanded(
      child: Text(
        loc,
        style: TextStyle(
          fontSize: 13,
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        ),
      ));
}

Expanded setProfName(String name) {
  return Expanded(
      child: Text(
        name,
        style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold),
      ));
}

CircleAvatar profilePic(String path) {
  return CircleAvatar(
    radius: 38,
    backgroundImage:
    AssetImage(path),
  );
}

Expanded priceAndDist(int p, double d) {
  return Expanded(
    child: SizedBox(
      height: 100, // Adjust this height as needed
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: Text(
                "\$ "+ p.toString() +"/hour",
                style: TextStyle(color: Colors.grey, fontSize: 14),
                textAlign: TextAlign.end,
              )),
          Expanded(
              child: Text(
                d.toString()+" KM",
                style: TextStyle(color: Colors.grey, fontSize: 12),
                textAlign: TextAlign.end,
              )),
          Expanded(child: RoundedTextButton()),
        ],
      ),
    ),
  );
}

SizedBox imageBox(String path) => SizedBox(height: 100,width:100,child:Image.asset(path,fit: BoxFit.contain));
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
