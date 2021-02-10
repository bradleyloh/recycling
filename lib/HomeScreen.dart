import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'globals.dart';
import 'slideshow.dart';
import 'CreateAccount.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

String _name="", _email="", _password= "";

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final fullNameController = TextEditingController();
  var data = [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/leafBackground.png"),
            fit: BoxFit.fitWidth ,
          ),
        ),
        margin: const EdgeInsets.symmetric (horizontal: 10.0),
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

                  new Text("BinGo!",
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
              child: Text("Yu Zhe $_name",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 18.0, bottom: 19.0),
            ),

            new Container (
              padding: EdgeInsets.symmetric(vertical: 10.0),
              decoration: new BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(
                  color: Color(0xFF457B3F),
                  width: 5.0,
                ),
                color: Colors.white,
              ),

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
                              image: new AssetImage('assets/images/coins.png')
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
                              style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                            ),
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
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              alignment: Alignment.center,
              margin: const EdgeInsets.only(left: 18.0, right:18.0, top: 30.0),
            ),

            new Container(
                padding: EdgeInsets.only(top: 60.0),
                decoration: new ShapeDecoration(
                  color: Colors.white,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
                    side: BorderSide(color: Color(0xFF457B3F), width: 5.0),
                  ),
                ),

                  child: new Sparkline(
                data: data,
                pointsMode: PointsMode.all,
                pointSize: 6.0,
                pointColor: Colors.amber,
                fillMode: FillMode.below,
                fillGradient: new LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF457B3F), Colors.green[300]],
              ),
            ),
                margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0)),

            new Container (
              child: Text("LEARN MORE ABOUT OUR EARTH",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(
                  left: 18.0, top: 50.0, bottom: 19.0),
            ),

             new Container (
             child: Slideshow(),
               height: 250,
             ),




                 new Container (
              child: Text("ABOUT US",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(
                  left: 18.0, top: 50.0, bottom: 10.0),
            ),

            new Container (
              child: Text(
                "We’re a team of motivated, environmentally conscious students of NTU and NUS out on a mission to change the community!\n\nAs part of our EEE DIP project, we’ve set out to make recycling easier, fun and rewarding!\n\n",
                style: TextStyle(fontSize: 14),),
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.symmetric(horizontal: 18.0),
            ),


          ],
        ),
      ),
    );
  }
}
