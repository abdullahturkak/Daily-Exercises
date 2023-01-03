// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'Screen/HomeScreen.dart';

void main() => runApp(myApp());

class myApp extends StatefulWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFF0A0A0A)),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
