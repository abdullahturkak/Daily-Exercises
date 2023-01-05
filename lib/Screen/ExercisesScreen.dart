//ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:counter/counter.dart';

class ExercisesScreen extends StatefulWidget {
  const ExercisesScreen({super.key});

  @override
  State<ExercisesScreen> createState() => _ExercisesScreenState();
}

class _ExercisesScreenState extends State<ExercisesScreen> {
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
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ExercisesScreen()));
                },
                child: null,
              ),
              Text(
                'This is My Text',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              Center(
                child: Counter(
                  min: 0,
                  max: 30,
                  bound: 3,
                  step: 1,
                  onValueChanged: print,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
