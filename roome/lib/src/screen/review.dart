import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Reviewscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ThemeData().scaffoldBackgroundColor,
        iconTheme: ThemeData().iconTheme,
        elevation: 0,
      ),
      body: ReviewBody(),
    );
  }
}

class ReviewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 20),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Reviews (20)',
              style: GoogleFonts.robotoSlab(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'View all',
              style: TextStyle(color: Color(0xff53d2c1)),
            ),
          ],
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
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Divider(
            thickness: 1.6,
          ),
        ),
        Reviewcard(
          size: size,
          image: 'assets/images/amanda.jpg',
          name: 'Sara Daniel',
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
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Divider(
            thickness: 1.6,
          ),
        ),
        Reviewcard(
          size: size,
          image: 'assets/images/amanda.jpg',
          name: 'Sara Daniel',
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
      ],
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
            Text(
              'Reply',
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
