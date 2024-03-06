import 'package:flutter/material.dart';
// import 'bottomnavbar.dart';
// import 'appbar.dart';
// import 'package:my_app/sliver_appbar.dart';
import 'package:my_app/tabbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TabBarHome(),
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}
