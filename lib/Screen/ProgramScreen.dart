//ignore_for_file: prefer_const_constructors

import 'package:daily_exercises/Screen/ExercisesScreen.dart';
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
      resizeToAvoidBottomInset: false,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Text(
                  'This is My Text',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                height: 300,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/btnfoto11.jpeg'),
                        fit: BoxFit.fitHeight)),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: new BoxDecoration(color: Colors.white),
                child: Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(15.0),
                    ),
                    ListTile(
                      leading: Icon(Icons.lunch_dining),
                      title: Text('I like life'),
                      subtitle: Text('Healthy eating is good for health'),
                      trailing: Icon(Icons.food_bank),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
