import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roome/src/screen/review.dart';
import 'package:roome/src/screen/rooms.dart';
import 'package:roome/src/widgets/button.dart';

class Detailscreen extends StatefulWidget {
  @override
  _DetailscreenState createState() => _DetailscreenState();
}

class _DetailscreenState extends State<Detailscreen> {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Detailbody(),
    );
  }
}

class Detailbody extends StatefulWidget {
  Detailbody({
    Key key,
  }) : super(key: key);

  @override
  _DetailbodyState createState() => _DetailbodyState();
}

class _DetailbodyState extends State<Detailbody> {
  double com = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        backimage(size: size),
        topwidget(),
        Positioned(
          left: 20,
          right: 20,
          bottom: 20,
          child: infoCard(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    com = size.height - 140;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'More Details',
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Bottomsheet(
            he: com,
          ),
        )
      ],
    );
  }
}

class Bottomsheet extends StatefulWidget {
  final double he;
  const Bottomsheet({
    Key key,
    this.he,
  }) : super(key: key);

  @override
  _BottomsheetState createState() => _BottomsheetState();
}

class _BottomsheetState extends State<Bottomsheet> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AnimatedContainer(
      height: widget.he,
      color: Colors.white,
      duration: Duration(milliseconds: 600),
      // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Expanded(
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Grand Royal\nPark Hotel',
                  style: GoogleFonts.robotoSlab(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '₹180',
                  style: GoogleFonts.robotoSlab(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        'Wembley, London',
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                      Icon(Icons.location_on,
                          color: Color(0xff53d2c1), size: 15),
                      Text(
                        '2 km to city ',
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                    ],
                  ),
                  Text(
                    '/per night',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Summary',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
              ),
            ),
            Text(
              'Featuring a fitness center, Grand Royal Park Hotel is located in Sweden, 4.7 km from National Museum...',
            ),
            Text(
              'Read more',
              style: TextStyle(color: Color(0xff53d2c1)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Card(
                shadowColor: Colors.black38,
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            Text(
                              '9.2',
                              style: GoogleFonts.robotoSlab(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff53d2c1)),
                            ),
                            SizedBox(width: 10),
                            Column(
                              children: [
                                Text('Overall Rating'),
                                Row(
                                  children: [
                                    Icon(Icons.star,
                                        size: 16, color: Color(0xff53d2c1)),
                                    Icon(Icons.star,
                                        size: 16, color: Color(0xff53d2c1)),
                                    Icon(Icons.star,
                                        size: 16, color: Color(0xff53d2c1)),
                                    Icon(Icons.star,
                                        size: 16, color: Color(0xff53d2c1)),
                                    Icon(Icons.star_border,
                                        size: 16, color: Color(0xff53d2c1)),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Room',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          SizedBox(width: 22),
                          Container(
                            height: 5,
                            width: 190,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xff53d2c1)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Service',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          SizedBox(width: 12),
                          Container(
                            height: 5,
                            width: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xff53d2c1)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Loation',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 5,
                            width: 140,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xff53d2c1)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Price',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          SizedBox(width: 25),
                          Container(
                            height: 5,
                            width: 160,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xff53d2c1)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Photos',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    'View all',
                    style: TextStyle(color: Color(0xff53d2c1)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return Photos(
                      image: 'assets/images/int.jpg',
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Reviews (20)',
                    style: TextStyle(color: Colors.grey),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Reviewscreen(),
                      ),
                    ),
                    child: Text(
                      'View all',
                      style: TextStyle(color: Color(0xff53d2c1)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Divider(
                thickness: 1.6,
              ),
            ),
            Reviewcard(
              size: size,
              image: 'assets/images/amanda.jpg',
              name: 'Alexia Jane',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Divider(
                thickness: 1.6,
              ),
            ),
            Reviewcard(
              size: size,
              image: 'assets/images/amn.jpg',
              name: 'Sara Daniel',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Button(
                text: 'Book now',
                textcolor: Colors.white,
                height: 45,
                buttonColor: Color(0xff53d2c1),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Rooms(),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Reviewcard extends StatelessWidget {
  const Reviewcard({
    Key key,
    @required this.size,
    this.image,
    this.name,
  }) : super(key: key);

  final Size size;
  final String image, name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(image),
                ),
                Column(
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetwee,
                      children: [
                        Text(
                          name,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 140),
                        Text('Very Good 8.0')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Last updated 21 May, 2020',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(width: 51),
                        Row(
                          children: [
                            Icon(Icons.star,
                                size: 16, color: Color(0xff53d2c1)),
                            Icon(Icons.star,
                                size: 16, color: Color(0xff53d2c1)),
                            Icon(Icons.star,
                                size: 16, color: Color(0xff53d2c1)),
                            Icon(Icons.star,
                                size: 16, color: Color(0xff53d2c1)),
                            Icon(Icons.star_border,
                                size: 16, color: Color(0xff53d2c1)),
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'This is Located in great spot close to shops and bars, very quiet location',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Photos extends StatelessWidget {
  final String image;
  const Photos({
    Key key,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20)),
    );
  }
}

// ignore: camel_case_types
class infoCard extends StatefulWidget {
  final Widget child;
  infoCard({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  _infoCardState createState() => _infoCardState();
}

// ignore: camel_case_types
class _infoCardState extends State<infoCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 220,
          decoration: BoxDecoration(
            color: Colors.blueGrey[300].withOpacity(0.5),
            borderRadius: BorderRadius.circular(30.0),
          ),
          padding: EdgeInsets.all(20),
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Grand Royal\nPark Hotel',
                      style: GoogleFonts.robotoSlab(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '₹180',
                      style: GoogleFonts.robotoSlab(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            'Wembley, London',
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                          Icon(Icons.location_on,
                              color: Color(0xff53d2c1), size: 15),
                          Text(
                            '2 km to city ',
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                        ],
                      ),
                      Text(
                        '/per night',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.star, size: 16, color: Color(0xff53d2c1)),
                    Icon(Icons.star, size: 16, color: Color(0xff53d2c1)),
                    Icon(Icons.star, size: 16, color: Color(0xff53d2c1)),
                    Icon(Icons.star, size: 16, color: Color(0xff53d2c1)),
                    Icon(Icons.star_border, size: 16, color: Color(0xff53d2c1)),
                    Text(
                      "  80 Reviews",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Button(
                      height: 45,
                      onPressed: () {},
                      text: 'Book Now',
                      buttonColor: Color(0xff53d2c1),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        widget.child,
      ],
    );
  }
}

// ignore: camel_case_types
class topwidget extends StatelessWidget {
  const topwidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 40,
      right: 20,
      left: 20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          CircleAvatar(
            radius: 23,
            backgroundColor: Colors.white,
            foregroundColor: Colors.grey,
            child: Icon(
              Icons.favorite_border,
              color: Color(0xff53d2c1),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class backimage extends StatelessWidget {
  const backimage({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/img4.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
