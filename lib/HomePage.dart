import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {
                print("Notification Clicked");
              },
            )
          ],
          title: Text("Recycling"),
          backgroundColor: Colors.green[700],
          centerTitle: true,
          leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                print("Clicked");
              })),
      body: Center(
        child: Text(
          "This is the next page",
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
