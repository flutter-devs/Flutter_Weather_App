import 'package:flutter/material.dart';
import 'package:roome/src/model/data.dart';

class Circleavtar extends StatelessWidget {
  const Circleavtar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: events.length,
        itemBuilder: (BuildContext context, int index) {
          return Buildcircle(
            event: events[index],
          );
        },
      ),
    );
  }
}

class Buildcircle extends StatelessWidget {
  final Event event;

  const Buildcircle({
    Key key,
    this.event,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 60,
          width: 60,
          margin: EdgeInsets.only(left: 20.0),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(event.image), fit: BoxFit.fill),
            shape: BoxShape.circle,
          ),
        ),
        Container(
          // width: ,
          margin: EdgeInsets.only(left: 20.0, top: 5),
          child: Text(
            event.title,
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
