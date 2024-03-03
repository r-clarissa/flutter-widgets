import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
         child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
           child: Container(
            height: 300,
            width: 300,
            color: Colors.blue[100],
            child: Image.asset(
              'assets/images/kokomi.jpeg',
              fit: BoxFit.cover,
              )
            ),
         )
        ),
      ),
    );
  }
}
