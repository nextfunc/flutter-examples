import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation_bar/android_tab.dart';
import 'package:flutter_bottom_navigation_bar/home_tab.dart';
import 'package:flutter_bottom_navigation_bar/ios_tab.dart';

void main() => runApp(new BottomNavigationApp());

class BottomNavigationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Stepper Example",
      home: new BottomNavigationHome(),
    );
  }
}

class BottomNavigationHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new BottomNavigationBarState();
  }
}

class BottomNavigationBarState extends State<BottomNavigationHome>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    this.tabController = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    this.tabController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new TabBarView(
        children: <Widget>[new HomeTab(), new AndroidTab(), new IOSTab()],
        controller: this.tabController,
      ),
      bottomNavigationBar: new Material(
        color: Colors.black,
        child: new TabBar(
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.home),
            ),
            new Tab(icon: new Icon(Icons.android)),
            new Tab(
              icon: new Icon(Icons.phone_iphone),
            )
          ],
          controller: this.tabController,
        ),
      ),
    );
  }
}
