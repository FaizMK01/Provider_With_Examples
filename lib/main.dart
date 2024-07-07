import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/Provider/CounterProvider.dart';
import 'package:provider_practice/Provider/GetProvider.dart';
import 'package:provider_practice/Provider/PostProvider.dart';
import 'package:provider_practice/Provider/SliderProvider.dart';
import 'package:provider_practice/Provider/ThemeProvider.dart';
import 'package:provider_practice/Views/HomePage.dart';
import 'package:provider_practice/Views/LoginAPiPage.dart';
import 'package:provider_practice/Views/themeColors.dart';
import 'Views/CounterPage.dart';
import 'Views/GetPage.dart';
import 'Views/SliderPage.dart';
import 'Views/ThemePage.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterProvider()),
        ChangeNotifierProvider(create: (_) => SliderProvider()),
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => GetProvider()),
        ChangeNotifierProvider(create: (_)=>PostProvider())
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: true);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      themeMode: themeProvider.themeMode,
      darkTheme: darkTheme,
      routes: {
        "/CounterPage": (context) => const CounterPage(),
        "/SliderPage": (context) => const SliderPage(),
        "/ThemePage": (context) => const ThemePage(),
        "/GetPage": (context) => const GetPage(),
        "/LoginApiPage":(context)=> const LoginApiPage(),

      },
    );
  }
}
