import 'package:flutter/material.dart';

class SliderProvider with ChangeNotifier {
  double slider = 0.0;


  void sliderValue(value) {
    slider = value;
    notifyListeners();
  }
}
