import 'package:flutter/material.dart';

class Inputbox extends StatelessWidget {
  final String hintText;
  const Inputbox({
    Key key,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        cursorColor: Color(0xffffcc2a),
        decoration: InputDecoration(
          hintText: hintText,
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffffcc2a), width: 2.0)),
        ),
      ),
    );
  }
}
