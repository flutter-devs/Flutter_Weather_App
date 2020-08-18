import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roome/src/widgets/button.dart';

class Detailscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/img4.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 20.0),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
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
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
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
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                ),
                                Icon(Icons.location_on,
                                    color: Color(0xff53d2c1), size: 15),
                                Text(
                                  '2 km to city ',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                ),
                              ],
                            ),
                            Text(
                              '/per night',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
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
                          Icon(Icons.star_border,
                              size: 16, color: Color(0xff53d2c1)),
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
            ),
          ],
        ),
      ),
    );
  }
}
