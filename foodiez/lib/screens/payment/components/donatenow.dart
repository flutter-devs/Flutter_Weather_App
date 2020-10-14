import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DonatenowButton extends StatelessWidget {
  const DonatenowButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 50.0,
      // width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.black,
      ),
      child: FlatButton(
        onPressed: () {
          showDialog(
            context: context,
            child: Container(
              alignment: Alignment.center,
              child: Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Container(
                    height: size.height * 0.35,
                    width: size.width - 90,
                    // alignment: Alignment.center,
                    margin: EdgeInsets.all(50.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 5),
                          blurRadius: 8,
                        ),
                      ],
                    ),
                    padding: EdgeInsets.only(
                        top: 70.0, left: 20.0, right: 20.0, bottom: 40.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: "You donate ",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 13),
                              ),
                              TextSpan(
                                text: "₹6,000",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: " to ACT",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: "Thank you for your donation",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              wordSpacing: 1.8,
                            ),
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text:
                                'Help this campaign reach others by share\n\t\t\t\t'
                                '  to your beloved, friends and family',
                            style:
                                TextStyle(color: Colors.black, fontSize: 13.0),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 23,
                              backgroundColor: Colors.black,
                              foregroundColor: Colors.white,
                              child: FaIcon(
                                FontAwesomeIcons.upload,
                                size: 18,
                              ),
                            ),
                            CircleAvatar(
                              radius: 23,
                              backgroundColor: Color(0xff3b579d),
                              foregroundColor: Colors.white,
                              child: FaIcon(
                                FontAwesomeIcons.facebookF,
                                size: 18,
                              ),
                            ),
                            CircleAvatar(
                              radius: 23,
                              backgroundColor: Color(0xff2caae1),
                              foregroundColor: Colors.white,
                              child: FaIcon(
                                FontAwesomeIcons.twitter,
                                size: 18,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        padding: EdgeInsets.symmetric(horizontal: 80.0),
        child: Text(
          "Donate Now",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}
