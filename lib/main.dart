import 'package:flutter/material.dart';
import 'package:pproject_4/views/screens/GameOverPage.dart';
import 'package:pproject_4/views/screens/HomePage.dart';
import 'package:pproject_4/views/screens/LosingPage.dart';
import 'package:pproject_4/views/screens/WinningPage.dart';

void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        'WinningPage': (context) => const WinningPage(),
        'LosingPage': (context) => const LosingPage(),
        'GameOverPage': (context) => const GameOverPage(),
      },
    );
  }
}
