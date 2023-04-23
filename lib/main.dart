import 'package:flutter/material.dart';
import 'package:pr_7_instagram_app/views/screen/HomePage.dart';
import 'package:pr_7_instagram_app/views/screen/SplshScreen.dart';
import 'package:pr_7_instagram_app/views/screen/StoryPage.dart';

void main () {
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
        'StoryPage' : (context) => const StoryPage(),
        'SplashScreen' : (context) => const SplashScreen(),
      }
      ,
    );
  }
}
