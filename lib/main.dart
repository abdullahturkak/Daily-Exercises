// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'Screen/HomeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFF0A0A0A)),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
