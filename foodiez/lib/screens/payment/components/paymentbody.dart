import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodiez/screens/payment/components/amountbox.dart';
import 'package:foodiez/screens/payment/components/cardbox.dart';
import 'package:foodiez/screens/payment/components/walletbox.dart';
import 'package:foodiez/widgets/button.dart';
import 'package:get/get.dart';

class PaymentBody extends StatefulWidget {
  @override
  _PaymentBodyState createState() => _PaymentBodyState();
}

class _PaymentBodyState extends State<PaymentBody> {
  @override
  Widget build(BuildContext context) {
    Size size = Get.mediaQuery.size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Amountbox(),
          SizedBox(height: 70.0),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Pay with",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          Walletbox(),
          SizedBox(height: 15.0),
          CardBox(),
          Align(
            heightFactor: 9,
            alignment: Alignment.bottomCenter,
            child: Button(
              height: 50,
              width: size.width,
              text: 'Pay Now',
              color: Colors.amber[400],
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
                                      text: "You paid ",
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
                                      text: "",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 13),
                                    ),
                                  ],
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  text: "Thank you for your buying from us",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    // wordSpacing: 1.8,
                                  ),
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  text: 'Help us to reach others by sharing\n'
                                      'to your beloved, friends and family',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 13.0),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Icon(
                            FontAwesomeIcons.check,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
