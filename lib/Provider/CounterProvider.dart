import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier{

  int number = 0;

  void increaseValue(){
    number++;
    notifyListeners();
  }

  void decreaseValue(){
    number--;
    notifyListeners();
  }

}