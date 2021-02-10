import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';

class Slideshow extends StatefulWidget {
  @override
  _SlideshowState createState() => _SlideshowState();
}

class _SlideshowState extends State<Slideshow> {
  final List<Color> colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
  ];
  final List letters = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
  ];

  bool _isPlaying = true;
  GlobalKey<CarouselSliderState> _sliderKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 250,
            child: CarouselSlider.builder(
                key: _sliderKey,
                unlimitedMode: true,
                slideBuilder: (index) {
                  return Container(
                    alignment: Alignment.center,
                    color: colors[index],
                    child: Text(
                      letters[index],
                      style: TextStyle(fontSize: 200, color: Colors.white),
                    )
                  );
                },
                slideTransform: AccordionTransform(),
                slideIndicator: CircularSlideIndicator(
                  padding: EdgeInsets.only(bottom: 20),
                ),
                itemCount: colors.length),
          ),
        ],
      ),
    );
  }
}