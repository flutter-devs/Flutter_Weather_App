import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roome/src/screen/home.dart';
// import 'package:roome/src/screen/homescreen.dart';
import 'package:roome/src/screen/profilescreen.dart';
import 'package:roome/src/widgets/customcard.dart';
import 'package:roome/src/widgets/customcardb.dart';

class TripsScreen extends StatelessWidget {
  BottomAppBar bottomAppBar(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10.0),
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Home(),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(Icons.search, color: Color(0xff53d2c1)),
                  Text('Explore',
                      style: TextStyle(color: Colors.grey, fontSize: 13.5))
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(Icons.favorite_border, color: Color(0xff53d2c1)),
                Text('Trips',
                    style: TextStyle(color: Color(0xff53d2c1), fontSize: 13.5))
              ],
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileScreen(),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(Icons.person_outline, color: Color(0xff53d2c1)),
                  Text(
                    'Profile',
                    style: TextStyle(color: Colors.grey, fontSize: 13.5),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomAppBar(context),
      body: Tripsbody(),
      backgroundColor: Colors.white,
    );
  }
}

class Tripsbody extends StatefulWidget {
  @override
  _TripsbodyState createState() => _TripsbodyState();
}

class _TripsbodyState extends State<Tripsbody> {
  int selectedIndex = 0;
  List category = ['Upcoming', 'Finished', 'Favorites'];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      // physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      children: <Widget>[
        SizedBox(height: 40.0),
        Text(
          'My Trips',
          style:
              GoogleFonts.robotoSlab(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Container(
          height: size.width * 0.15,
          width: size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40.0),
            color: Colors.grey[100],
          ),
          margin: EdgeInsets.only(top: 20.0),
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) => GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.center,
                child: Text(
                  category[index],
                  style: TextStyle(
                      color: index == selectedIndex
                          ? Color(0xff53d2c1)
                          : Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
        IndexedStack(
          index: selectedIndex,
          children: <Widget>[
            upcoming(context),
            finished(context),
            favourites(context),
          ],
        ),
      ],
    );
  }
}

Widget upcoming(BuildContext context) {
  return Column(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          '12 Dec - 22 Dec, 1 Room - 2 Adults',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      CustomCardB(image: 'assets/images/img5.jpg', title: 'Grand Royal Hotel'),
      // SizedBox(height: 20),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          '23 Dec - 25 Dec, 1 Room - 2 Adults',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      CustomCardB(image: 'assets/images/img4.jpg', title: 'Queen Hotel'),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          '26 Dec - 28 Dec, 1 Room - 2 Adults',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      CustomCardB(image: 'assets/images/img3.jpg', title: 'Grand Royal Hotel'),
    ],
  );
}

Widget finished(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Column(
      children: <Widget>[
        CustomCard(image: 'assets/images/img2.jpg', title: 'Hotel Plaza'),
        SizedBox(height: 20),
      ],
    ),
  );
}

Widget favourites(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Column(
      children: <Widget>[
        CustomCard(image: 'assets/images/img3.jpg', title: 'Grand Hotel'),
        SizedBox(height: 20),
        CustomCard(image: 'assets/images/img5.jpg', title: 'Grand Hotel'),
        SizedBox(height: 20),
        CustomCard(image: 'assets/images/img2.jpg', title: 'Grand Hotel'),
      ],
    ),
  );
}
