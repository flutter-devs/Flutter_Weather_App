import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roome/src/model/data.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.width * 1.2,
      child: Swiper(
        itemCount: events.length,
        loop: false,
        viewportFraction: 0.9,
        scale: 0.95,
        outer: true,
        scrollDirection: Axis.horizontal,
        pagination: SwiperPagination(
          builder: DotSwiperPaginationBuilder(
            color: Colors.grey,
            size: 10.0,
            activeSize: 10.0,
            space: 3.0,
            activeColor: Color(0xff53d2c1),
          ),
        ),
        itemBuilder: (context, index) {
          return BuildCard(
            event: events[index],
          );
        },
      ),
    );
  }
}

class BuildCard extends StatelessWidget {
  final Event event;
  const BuildCard({
    Key key,
    this.event,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 0.0, top: 12.0, bottom: 12.0, right: 10),
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(event.image),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 10.0,
            spreadRadius: 0.5,
          ),
        ],
      ),
      child: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                event.title,
                style: GoogleFonts.robotoSlab(
                    color: Colors.white,
                    fontSize: 42.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              Container(
                height: 5,
                width: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Extraordinary five-star\noutdoor activites',
                style: GoogleFonts.robotoSlab(
                    fontSize: 20,
                    color: Colors.white70,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
