import 'package:flutter/material.dart';

var lightTheme = ThemeData(
    useMaterial3: true,
    appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        color: Colors.deepPurple,
        centerTitle: true),
    colorScheme: ColorScheme.light(
        surface: Colors.deepPurple.shade200,
        onSurface: Colors.deepPurple,
        primaryContainer: Colors.white,
        primary: Colors.deepPurple));

var darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
        surface: Colors.black,
        onSurface: Colors.white,
        primaryContainer: Colors.white60,
        primary: Colors.blue));
