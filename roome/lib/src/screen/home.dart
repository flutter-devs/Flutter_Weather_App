import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roome/src/model/data.dart';
import 'package:roome/src/screen/detailscreen.dart';
import 'package:roome/src/screen/profilescreen.dart';
import 'package:roome/src/screen/searchscreen.dart';
import 'package:roome/src/screen/tripsscreen.dart';
// import 'package:roome/src/widgets/button.dart';
import 'package:roome/src/widgets/circleavtar.dart';
import 'package:roome/src/widgets/customcard.dart';
import 'package:roome/src/widgets/evnt.dart';
import 'package:roome/src/widgets/searchbox.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

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
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(Icons.search, color: Color(0xff53d2c1)),
                Text(
                  'Explore',
                  style: TextStyle(color: Color(0xff53d2c1), fontSize: 13.5),
                ),
              ],
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TripsScreen(),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(Icons.favorite_border, color: Color(0xff53d2c1)),
                  Text('Trips',
                      style: TextStyle(color: Colors.grey, fontSize: 13.5))
                ],
              ),
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
                  ),
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
      body: Homebody(),
      bottomNavigationBar: bottomAppBar(context),
    );
  }
}

class Homebody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      // padding: EdgeInsets.zero,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: SearchBox(
            prefixIcon: Icon(Icons.search, color: Color(0xff53d2c1)),
            hintText: 'Where are you going?',
            ondone: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Searchscreen(),
                ),
              );
            },
          ),
        ),
        // SizedBox(height: 20.0),
        Circleavtar(),
        EventCard(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10.0),
          child: Text(
            'Popular Destinations',
            style: GoogleFonts.robotoSlab(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: size.width * 0.8,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 16),
            itemCount: events.length,
            itemBuilder: (BuildContext context, int index) {
              return BuildCard(
                itemIndex: index,
                event: events[index],
              );
            },
          ),
        ),
        SizedBox(height: 20.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Best Deals',
            style: GoogleFonts.robotoSlab(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: size.height * 0.2,
          width: size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            itemBuilder: (BuildContext context, int index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Detailscreen(),
                  ),
                ),
                child: CustomCard(
                  image: 'assets/images/img5.jpg',
                  title: 'Grand Royal Hotel',
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class BuildCard extends StatelessWidget {
  final int itemIndex;

  final Event event;
  const BuildCard({
    Key key,
    this.itemIndex,
    this.event,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 240,
      width: 250,
      decoration: BoxDecoration(
        image:
            DecorationImage(image: AssetImage(event.image), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black26.withOpacity(0.15),
            offset: Offset(0, 3),
            blurRadius: 10,
            spreadRadius: 3,
          ),
        ],
      ),
      margin: EdgeInsets.only(left: 20.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Stack(
        children: <Widget>[
          Text(
            event.title,
            style: GoogleFonts.robotoSlab(color: Colors.white, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
