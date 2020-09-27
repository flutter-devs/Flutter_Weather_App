import 'package:flutter/material.dart';

class Searchbox extends StatelessWidget {
  const Searchbox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: size.width,
      child: TextField(
        decoration: InputDecoration(
          alignLabelWithHint: true,
          contentPadding: EdgeInsets.all(5),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Color(0xffffcc2a), width: 2.0)),
          hintText: 'Search for restaurant...',
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}
