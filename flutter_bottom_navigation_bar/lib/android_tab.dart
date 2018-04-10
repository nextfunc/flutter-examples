import 'package:flutter/material.dart';

class AndroidTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.green,
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Icon(
              Icons.android,
              color: Colors.white,
              size: 100.0,
            ),
            new Text(
              "Android Tab",
              style: new TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
