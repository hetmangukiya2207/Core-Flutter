import 'package:flutter/material.dart';
import 'package:lifekick_shoes_ecommarce_app/screens/ExplorePage.dart';
import 'package:lifekick_shoes_ecommarce_app/screens/HomePage.dart';
import 'package:lifekick_shoes_ecommarce_app/screens/SelectRegion.dart';
import 'package:lifekick_shoes_ecommarce_app/screens/SplashScreen.dart';

void main ()
{
  runApp(const MyApp(),);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'SplashScreen',
      routes:
      {
        'SplashScreen' : (context) => const SplashScreen(),
        'SelectRegion' : (context) => const SelectRegion(),
        'ExplorePage' : (context) => const ExplorPage(),
        '/' : (context) => const HomePage(),
      },
    );
  }
}