import 'package:flutter/material.dart';
import 'package:kbc_game/views/screens/game_oner_page.dart';
import 'package:kbc_game/views/screens/homepage.dart';
import 'package:kbc_game/views/screens/loose_page.dart';
import 'package:kbc_game/views/screens/winner_page.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        'winner_page': (context) => winner_page(),
        'gameover_page': (context) => gameover_page(),
        'lose_page': (context) => const lose_page(),
      },
    );
  }
}

