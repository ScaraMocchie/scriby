import 'package:flutter/material.dart';
import 'package:tobaapp/screens/vocabulary_page.dart';
import '../screens/lockscreen.dart';
import '../screens/splash_screen.dart';
import 'package:get/get.dart';

//import './screens/homePage.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FluentScrib',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 255, 255, 255)),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}
