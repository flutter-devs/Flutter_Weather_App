import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialButton extends StatelessWidget {
  final FaIcon icon;
  final String text;
  final Color textcolor, color;
  const SocialButton({
    Key key,
    this.icon,
    this.text,
    this.textcolor,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {},
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
      color: color,
      // color: Color(0xff3b5898),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      child: Row(
        children: <Widget>[
          icon,
          SizedBox(width: 5),
          Text(text, style: TextStyle(color: textcolor)),
        ],
      ),
    );
  }
}
