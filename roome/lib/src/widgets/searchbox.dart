import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  final Widget prefixIcon;
  final String hintText;

  const SearchBox({
    Key key,
    this.prefixIcon,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.width * 0.13,
      width: size.width * 0.95,
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 3),
            color: Colors.black12,
            spreadRadius: 2.0,
            blurRadius: 10,
          ),
        ],
      ),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          alignLabelWithHint: true,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.0, vertical: 14.0),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
          prefixIcon: prefixIcon,
        ),
      ),
    );
  }
}
