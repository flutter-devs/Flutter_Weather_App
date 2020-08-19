import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roome/src/screen/home.dart';
import 'package:roome/src/screen/profilescreen.dart';
import 'package:roome/src/screen/tripsscreen.dart';
import 'package:roome/src/widgets/searchbox.dart';

class Helpscreen extends StatelessWidget {
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
                    style: TextStyle(color: Color(0xff53d2c1), fontSize: 13.5),
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
      body: Helpbody(),
    );
  }
}

class Helpbody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height * 0.3,
          width: size.width,
          color: Color(0xff53d2c1),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onTap: () => Navigator.pop(context),
                  ),
                  Text(
                    'How can we help ?',
                    style: GoogleFonts.robotoSlab(
                        fontSize: 25, color: Colors.white),
                  ),
                  SearchBox(
                    hintText: 'Search help articles',
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color(0xff53d2c1),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            children: [
              Text(
                'Paying for reservation',
                style: GoogleFonts.robotoSlab(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Divider(
                  thickness: 1.6,
                ),
              ),
              Query(
                text: 'How do I cancel my rooms\nreservation?',
              ),
              Query(
                text: 'What method of payments does\nRoome accept?',
              ),
              Query(
                text: 'When am i charged for reservation?\n',
              ),
              Query(
                text: 'How do I remove or edit a payment\nmethods?',
              ),
              Text(
                'Trust and safety',
                style: GoogleFonts.robotoSlab(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Divider(
                  thickness: 1.6,
                ),
              ),
              Query(
                text: 'I am a guest. What are some safety\ntips i can follow?',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Query extends StatelessWidget {
  final String text;
  const Query({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
              size: 18,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Divider(
            thickness: 1.6,
          ),
        ),
      ],
    );
  }
}
