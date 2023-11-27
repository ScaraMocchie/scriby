import 'package:flutter/material.dart';
import 'package:regislogindash/dash.dart';
import 'package:regislogindash/login.dart';
import 'package:regislogindash/white_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: WhiteScreen(),
    );
  }
}
