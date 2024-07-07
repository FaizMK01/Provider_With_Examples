import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  var themeMode = ThemeMode.light;

  void themeModeChange(ThemeMode mode) {
    themeMode = mode;
    notifyListeners();
  }
}
