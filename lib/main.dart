import 'package:flutter/material.dart';
import 'package:food_app/home.dart';
// ignore: unused_import
//import 'package:food_app/auth/login.dart';
//import 'package:convex_bottom_bar/ convex_bottom_bar.dart';
//import 'package:floating_bottom_navigation_bar/ floating_bottom_navigation_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: " Food App",
      home: Home(),
    );
  }
}
