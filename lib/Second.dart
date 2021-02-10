import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_controller.dart';

import 'slideshow.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        margin: const EdgeInsets.all (10.0),
        alignment: Alignment.center,
        child: ListView(
          children: <Widget>[
        new Container (
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
                width: 100.0,
                height: 100.0,
                decoration: new BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: new DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: new AssetImage('assets/images/recycle.png')
                    )
                )),

            new Text("Bin-Go!",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 50,
                color: Color(0xFF457B3F),
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(1, 1),
                    blurRadius: 3.0,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
        margin: const EdgeInsets.only(top: 41.0, bottom: 20.0),
      ),

      new Container (
        child: Text("YOUR DASHBOARD",
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 18),),
        alignment: Alignment.centerLeft,
        margin: const EdgeInsets.only(left: 18.0, bottom: 19.0),
      ),

      new Container (
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
                width: 64.0,
                height: 64.0,
                decoration: new BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: new DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: new AssetImage('assets/images/leaf.png')
                    )
                ),
                margin: const EdgeInsets.only(right: 18.0)),

            new Container (
                child: Column(
                  children: <Widget>[
                    new Container (
                      child: Text("4,860",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 48,
                          color: Color(0xFF457B3F),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(left: 18.0),
                    ),
                    new Container (
                      child: Text("TOTAL POINTS COLLECTED!",
                        style: TextStyle(fontSize: 14),),
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(bottom: 14.0),
                    ),],),
                margin: const EdgeInsets.only(right: 18.0)),

            new Container(
                width: 64.0,
                height: 64.0,
                decoration: new BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: new DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: new AssetImage('assets/images/coins.png')
                    )
                )),],),),

      new Container (
        child: Text("CHECK OUT WHAT YOU CAN REDEEM IN REWARDS!",
          style: TextStyle(fontSize: 14),),
        alignment: Alignment.center,
        margin: const EdgeInsets.only(left: 18.0, top: 14.0),
      ),

      //new Container (FOR THE GRAPH)



      new Container (
        child: Text("RECYCLING EDUCATION",
          style: TextStyle(fontSize: 14),),
        alignment: Alignment.centerLeft,
        margin: const EdgeInsets.only(
            left: 18.0, top: 50.0, bottom: 19.0),
      ),

      new Container (
          child: CarouselSlider(
            items: [1,2,3,4,5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                          color: Colors.amber
                      ),
                      child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                  );
                },
              );
            }).toList(),
          )
          margin: const EdgeInsets.only(left: 18.0),
    ),



    new Container (
    child: Text("ABOUT US",
    style: TextStyle(fontSize: 14),),
    alignment: Alignment.centerLeft,
    margin: const EdgeInsets.only(
    left: 18.0, top: 50.0, bottom: 19.0),
    ),

    new Container (
    child: Text(
    "We’re a team of motivated, environmentally conscious students of NTU and NUS out on a mission to change the community!\n\nAs part of our EEE DIP project, we’ve set out to make recycling easier, fun and rewarding!",
    style: TextStyle(fontSize: 14),),
    alignment: Alignment.centerLeft,
    margin: const EdgeInsets.only(left: 18.0),
    ),


    ],
    ),
    ),
    );
  }
}
