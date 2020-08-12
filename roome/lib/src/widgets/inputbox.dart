import 'package:flutter/material.dart';

class Inputbox extends StatelessWidget {
  final String text;
  final bool obscuretext;
  final Widget icon;
  const Inputbox({
    Key key,
    this.text,
    this.obscuretext = false,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.grey[200], blurRadius: 10.0, spreadRadius: 10.0),
        ],
      ),
      alignment: Alignment.centerLeft,
      child: TextField(
        obscureText: obscuretext,
        decoration: InputDecoration(
          border: InputBorder.none, alignLabelWithHint: true,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.0, vertical: 14.0),
          hintText: text,
          hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
          // labelText: 'hjh',
          // prefixText: 'jghj',
          suffixIcon: icon,
        ),
      ),
    );
  }
}
