import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:roome/src/screen/home.dart';
import 'package:roome/src/screen/profilescreen.dart';
import 'package:roome/src/widgets/customcardb.dart';
// import 'package:roome/src/widgets/inputbox.dart';
import 'package:roome/src/widgets/searchbox.dart';

class Searchscreen extends StatelessWidget {
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
      appBar: AppBar(
        backgroundColor: ThemeData().scaffoldBackgroundColor,
        iconTheme: ThemeData().iconTheme,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Explore',
          style: GoogleFonts.robotoSlab(color: Colors.black),
        ),
        actions: [
          Icon(Icons.favorite_border),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.location_on),
          ),
        ],
      ),
      bottomNavigationBar: bottomAppBar(context),
      body: Searchbody(),
      // backgroundColor: Colors.white,
    );
  }
}

class Searchbody extends StatefulWidget {
  @override
  _SearchbodyState createState() => _SearchbodyState();
}

class _SearchbodyState extends State<Searchbody> {
  String _dateTime;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height * 0.2,
          width: size.width,
          color: Colors.grey[300],
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SearchBox(
                    width: size.width - 100,
                    hintText: 'Search',
                  ),
                  CircleAvatar(
                    backgroundColor: Color(0xff53d2c1),
                    foregroundColor: Colors.white,
                    radius: 25,
                    child: Icon(Icons.search),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    child: Text(_dateTime == null
                        ? 'Dec 24, 2019'
                        : _dateTime.toString()),
                    onTap: () {
                      showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2025),
                              initialDatePickerMode: DatePickerMode.day)
                          .then((date) {
                        setState(() {
                          _dateTime = new DateFormat.yMMMd('en_US')
                              .format(date)
                              .toString();
                        });
                      });
                    },
                  ),
                  Text('|'),
                  GestureDetector(
                      onTap: () {}, child: Text('1 Room - 2 Adults')),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('508 Hotels found'),
                  Row(
                    children: <Widget>[
                      Text('Filter'),
                      Icon(Icons.filter_list),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              CustomCardB(
                  image: 'assets/images/img5.jpg', title: 'Grand Royal Hotel'),
              SizedBox(height: 20),
              CustomCardB(
                  image: 'assets/images/img1.jpg', title: 'Grand Royal Hotel'),
              SizedBox(height: 20),
              CustomCardB(
                  image: 'assets/images/img3.jpg', title: 'Grand Royal Hotel'),
            ],
          ),
        ),
      ],
    );
  }

  int value = 1;
  void upVal() {
    setState(() {
      value++;
    });
  }

  void downVal() {
    setState(() {
      if (value != 1) {
        value--;
      }
    });
  }
}
