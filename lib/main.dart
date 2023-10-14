import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int teamapoint = 0;
  int teambpoint = 0;
  void addOnePoint() {}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text('Points Counter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 500,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                          top: 40,
                          left: 10,
                          bottom: 10,
                          right: 10,
                        ),
                        child: Text(
                          'Team One',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 26),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 40,
                        ),
                        child: Text(
                          '$teamapoint',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 100,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10, left: 40, bottom: 10),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              // ignore: deprecated_member_use
                              primary: Colors.teal,
                              minimumSize: const Size(100, 40)),
                          onPressed: () {
                            setState(() {
                              teamapoint++;
                            });
                          },
                          child: const Text('Add 1 Point'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10, left: 40, bottom: 10),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              // ignore: deprecated_member_use
                              primary: Colors.teal,
                              minimumSize: const Size(100, 40)),
                          onPressed: () {
                            setState(() {
                              teamapoint += 2;
                            });
                          },
                          child: const Text('Add 2 Point'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10, left: 40, bottom: 10),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              // ignore: deprecated_member_use
                              primary: Colors.teal,
                              minimumSize: const Size(100, 40)),
                          onPressed: () {
                            setState(() {
                              teamapoint += 3;
                            });
                          },
                          child: const Text('Add 3 Point'),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 400,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                SizedBox(
                  height: 500,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                            top: 40, left: 10, bottom: 10, right: 10),
                        child: Text(
                          'Team Two',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 26),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 40,
                        ),
                        child: Text(
                          '$teambpoint',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 100,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10, left: 40, bottom: 10),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              // ignore: deprecated_member_use
                              primary: Colors.teal,
                              minimumSize: const Size(100, 40)),
                          onPressed: () {
                            setState(() {
                              teambpoint++;
                            });
                          },
                          child: const Text('Add 1 Point'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10, left: 40, bottom: 10),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              // ignore: deprecated_member_use
                              primary: Colors.teal,
                              minimumSize: const Size(100, 40)),
                          onPressed: () {
                            setState(() {
                              teambpoint += 2;
                            });
                          },
                          child: const Text('Add 2 Point'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10, left: 40, bottom: 10),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              // ignore: deprecated_member_use
                              primary: Colors.teal,
                              minimumSize: const Size(100, 40)),
                          onPressed: () {
                            setState(() {
                              teambpoint += 3;
                            });
                          },
                          child: const Text('Add 3 Point'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  // ignore: deprecated_member_use
                  primary: Colors.teal,
                  minimumSize: const Size(110, 50)),
              onPressed: () {
                setState(() {
                  teamapoint = 0;
                  teambpoint = 0;
                });
              },
              child: const Text(
                'Reset',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
