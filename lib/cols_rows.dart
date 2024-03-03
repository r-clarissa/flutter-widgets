import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                color: Colors.pink[50],
              ),
            ),
            Container(
                width: 100,
                color: Colors.pink[100],
              ),
            Container(
              width: 100,
              color: Colors.pink[200],
            ),
          ]
        ),
      ),
    );
  }
}