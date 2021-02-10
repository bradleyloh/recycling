import 'package:flutter/material.dart';

class RewardsPage extends StatefulWidget {
  @override
  _RewardsPageState createState() => _RewardsPageState();
}

class _RewardsPageState extends State<RewardsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Container(
            height: 1000,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/leafBackground.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
          margin: const EdgeInsets.symmetric (horizontal: 10.0),
          alignment: Alignment.center,

            child: Column(
                children: <Widget>[
                  new Container (
                    margin: const EdgeInsets.only (top: 150, bottom: 100),
                    child: Text("Hello ____!",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center),
                  ),
                ]
            ),
        ),
    );
  }
}


