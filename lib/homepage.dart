  import 'package:flutter/material.dart';
  import 'package:convex_bottom_bar/convex_bottom_bar.dart';

  import 'HomeScreen.dart';
  import 'Profile.dart';
  import 'rewards.dart';


  void clear() {
    imageCache.clear();
  }


  class MyHomePage extends StatefulWidget {
    MyHomePage({Key key}) : super(key: key);
    @override
  _MyHomePageState createState() => _MyHomePageState();
  }

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final _widgetOptions = [
    HomeScreen(),
    Text('Index 1: Maps Page'),
    Text('Index 2: Camera Page'),
    RewardsPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.fixed,
        items: [
          TabItem(
                activeIcon: Icon(Icons.home, color: const Color (0xFF658D62)),
            icon: new Icon(Icons.home, color: Colors.black),
            title: 'HOME',
          ),
          TabItem(
            activeIcon: Icon(Icons.map, color: const Color(0xFF658D62)),
            icon: new Icon(Icons.map, color: Colors.black),
            title: 'MAP',
          ),
          TabItem(
            activeIcon: Icon(
                Icons.camera_alt_rounded, color: const Color(0xFF658D62),
                size: 41),
            icon: new Icon(
                Icons.camera_alt_rounded, color: Colors.black, size: 41),
            title: 'CAMERA',
          ),
          TabItem(
            activeIcon: Icon(
                Icons.card_giftcard, color: const Color(0xFF658D62)),
            icon: new Icon(Icons.card_giftcard, color: Colors.black),
            title: 'REWARDS',
          ),
          TabItem(
              activeIcon: Icon(Icons.person, color: const Color(0xFF658D62)),
              icon: new Icon(Icons.person, color: Colors.black),
              title: 'ME'
          ),
        ],
        backgroundColor: const Color(0xFF658D62),
        color: Colors.white,
        activeColor: Colors.black,
        initialActiveIndex: _selectedIndex,
        onTap: _onItemTapped,

      ),
    );
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

}




