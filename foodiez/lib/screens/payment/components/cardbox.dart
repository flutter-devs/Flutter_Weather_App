import 'package:flutter/material.dart';

class CardBox extends StatefulWidget {
  CardBox({
    Key key,
  }) : super(key: key);

  @override
  _CardBoxState createState() => _CardBoxState();
}

class _CardBoxState extends State<CardBox> {
  IconData _icon;
  Color color = Colors.white54;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _icon = Icons.check;
          color = Colors.amber[300];
        });
      },
      child: Container(
        height: 55.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: color,
          border: Border.all(color: Colors.black26),
        ),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Icon(
                  Icons.call_to_action,
                  size: 19.0,
                ),
              ),
              Text("Jenny"),
              SizedBox(width: 130.0),
              Text(
                "...3580",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Container(
                width: 40,
                child: Icon(
                  _icon,
                  size: 16,
                  color: Colors.green,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
