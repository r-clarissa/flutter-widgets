import 'package:flutter/material.dart';
import 'lst_item_square.dart';
import 'lst_item_circle.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List _posts = [
    'post 1',
    'post 2',
    'post 3',
    'post 4',
    'post 5',
  ];

    final List _stories = [
    'story 1',
    'story 2',
    'story 3',
    'story 4',
    'story 5',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            // instagram stories
            Container(
              height: 150,
              child:ListView.builder(
                itemCount: _stories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return MyCircle(child: _stories[index]);
                }
              ),
            ),

            // instagram posts
            Expanded(
              child: ListView.builder(
                itemCount: _posts.length,
                itemBuilder: (context, index) {
                return MySquare(child: _posts[index]);
              }),
            ),
          ],
        ),
      ),
    );
  }
}