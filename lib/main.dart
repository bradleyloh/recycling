import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';

import 'HomeScreen.dart';
import 'homepage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: MyHomePage(),

    );

  }
}



