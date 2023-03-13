import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:viva_1/views/screens/DescPage.dart';
import 'package:viva_1/views/screens/HomePage.dart';
import 'package:viva_1/views/screens/SneakersPage.dart';
import 'package:viva_1/views/screens/CartPage.dart';

void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        'SneakersPage': (context) => const SneakersPage(),
        'DescPage': (context) => const DescPage(
              Sneakers: {},
            ),
        'CartPage': (context) => const CartPage(
              Sneakers: {},
            ),
      },
    );
  }
}
