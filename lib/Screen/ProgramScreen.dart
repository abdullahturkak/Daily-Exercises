//ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProgramScreen extends StatefulWidget {
  const ProgramScreen({Key? key}) : super(key: key);

  @override
  State<ProgramScreen> createState() => _ProgramScreenState();
}

class _ProgramScreenState extends State<ProgramScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Container(
              child: Center(
                child: Text(
                  'This is My Text',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
              height: 300,
              width: MediaQuery.of(context).size.width - 5,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/btnfoto11.jpeg'),
                      fit: BoxFit.fitHeight)),
            ),
          ],
        ),
      ),
    );
  }
}
