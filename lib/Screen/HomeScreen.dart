// ignore_for_file: prefer_const_constructors
import 'package:daily_exercises/Screen/ProgramScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Odak Bölgesi',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 120,
              child: Row(children: [
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 3,
                      height: 90,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ProgramScreen()));
                        },
                        child: CircleAvatar(
                          radius: 72.0,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('assets/foto1.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        child: Text(
                          'Karın Bölgesi',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 3,
                      height: 90,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: CircleAvatar(
                        radius: 72.0,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('assets/foto2.png'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        child: Text(
                          'Göğüs Bölgesi',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 3,
                      height: 90,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: CircleAvatar(
                        radius: 72.0,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('assets/foto3.png'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        child: Text(
                          'Sırt Bölgesi',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 120,
                child: Row(children: [
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 3,
                        height: 90,
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: CircleAvatar(
                          radius: 72.0,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('assets/foto4.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          child: Text(
                            'Kol Bölgesi',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 3,
                        height: 90,
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: CircleAvatar(
                          radius: 72.0,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('assets/foto5.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          child: Text(
                            'Arka Kol Bölgesi',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 3,
                        height: 90,
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: CircleAvatar(
                          radius: 72.0,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('assets/foto6.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          child: Text(
                            'Bacak Bölgesi',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 400,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Seviye',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 10,
                      height: 100,
                      child: Container(
                        margin: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Press Me'),
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
                          child: const Text('Press Me'),
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
                          child: const Text('Press Me'),
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
            ),
          ],
        ),
      ),
    );
  }
}
