//ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'dart:async';

class ExercisesScreen extends StatefulWidget {
  const ExercisesScreen({Key? key}) : super(key: key);

  @override
  State<ExercisesScreen> createState() => _ExercisesScreenState();
}

class _ExercisesScreenState extends State<ExercisesScreen> {
  int _counter = 30;
  Timer? _timer;
  void _startTimer() {
    _counter = 30;
    if (_timer != null) {
      _timer!.cancel();
    }
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          _timer!.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/btnfoto11.jpeg'),
                      fit: BoxFit.fitHeight)),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 10,
              height: 100,
              child: Container(
                margin: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () => _startTimer(),
                  child: Text("HEMEN BAŞLA!"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
            ),
            Text(
              "$_counter",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
            ),
            (_counter > 0)
                ? Text("")
                : Text(
                    "BUGÜNLÜK YETER",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 36,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
