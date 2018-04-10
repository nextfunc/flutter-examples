import 'package:flutter/material.dart';

class IOSTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.purple,
      body: new Center(
          child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Icon(
            Icons.phone_iphone,
            color: Colors.white,
            size: 100.0,
          ),
          new Text(
            "iOS Tab",
            style: new TextStyle(color: Colors.white),
          )
        ],
      )),
    );
  }
}
