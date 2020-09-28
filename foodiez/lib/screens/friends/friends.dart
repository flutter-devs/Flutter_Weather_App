import 'package:flutter/material.dart';

class Friends extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Friends',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.yellow[700]),
      ),
      body: Friendbody(),
    );
  }
}

class Friendbody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(top: 10),
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 2),
                        color: Colors.grey,
                        blurRadius: 5,
                        spreadRadius: -2,
                      ),
                    ],
                  ),
                  margin: EdgeInsets.only(bottom: 10),
                  child: Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/profile.png'),
                        ),
                        title: Text(
                          ['Amy', 'Gordon', 'Bruce', 'Selina'][index],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          'username@246',
                          style: TextStyle(fontSize: 12),
                        ),
                        trailing: Container(
                          height: 22,
                          width: 60,
                          child: FlatButton(
                            padding: EdgeInsets.zero,
                            color:
                                index.isOdd ? Colors.teal[300] : Colors.white,
                            child: Text(
                              'Follow',
                              style: TextStyle(fontSize: 10),
                            ),
                            textColor:
                                index.isEven ? Colors.teal[300] : Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(
                                color: Colors.teal[300],
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
