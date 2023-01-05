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
      resizeToAvoidBottomInset: false,
      body: Center(
        child:Expanded(          
          child: SingleChildScrollView(
            padding: EdgeInsets.all(32),
            reverse: true,
            child: Column(
              children:[
                Container(
                    child: Text(
                      'This is My Text',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                      height: 300,
                      width: MediaQuery.of(context).size.width - 5,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/btnfoto11.jpeg'),
                          fit: BoxFit.fitHeight)),
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 400,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 10,
                          height: 100,
                          child: Container(
                            margin: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text('Antrenman 1'),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.blueGrey),
                                overlayColor: MaterialStateProperty.all(Colors.red),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 10,
                          height: 100,
                          child: Container(
                            margin: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text('Antrenman 2'),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.blueGrey),
                                overlayColor:
                                    MaterialStateProperty.all(Colors.yellow),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 10,
                          height: 100,
                          child: Container(
                            margin: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text('Antrenman 3'),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.blueGrey),
                                overlayColor:
                                    MaterialStateProperty.all(Colors.blue),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 10,
                          height: 100,
                          child: Container(
                            margin: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text('Antrenman 3'),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.blueGrey),
                                overlayColor:
                                    MaterialStateProperty.all(Colors.blue),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
              ),
        ),
      );
  }
}
