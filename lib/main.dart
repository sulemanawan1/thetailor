import 'package:flutter/material.dart';
import 'package:thetailor/Screens/Home/View/home_screen.dart';
import 'package:thetailor/Screens/Welcome/View/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Home()),);
  }
}
