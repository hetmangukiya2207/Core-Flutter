import 'package:flutter/material.dart';
import 'package:pr_5_inoice_generator/views/screens/CartPage.dart';
import 'package:pr_5_inoice_generator/views/screens/HomePage.dart';
import 'package:pr_5_inoice_generator/views/screens/SplashScreen.dart';

void main()
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
      routes: {
        '/' : (context) => const HomePage(),
        'SplashScreen' : (context) => const SplashScreen(),
        'CartPage' : (context) => const CartPage(),
      },
    );
  }
}
