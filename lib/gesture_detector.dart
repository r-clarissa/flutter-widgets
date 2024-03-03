import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {

  // variable
  int numberOfTimesTapped = 0;

  // method
  void _increaseNumber() {
    setState(() {
      numberOfTimesTapped++;
    });
  }

  // UI
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Tapped ' + numberOfTimesTapped.toString() + ' times', style: TextStyle(fontSize: 20)),
              GestureDetector(
                onTap: _increaseNumber,
                child: Container(
                  padding: EdgeInsets.all(15),
                  color: Colors.pink[100],
                  child: Text('TAP HERE', style: TextStyle(fontSize: 20))
                ),
              ),
          ],),
        )
      )
    );
  }
}
