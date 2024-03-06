import 'package:flutter/material.dart';

class ThirdTab extends StatelessWidget {
  const ThirdTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.pink[200],
      child: Center(
        child: Text(
          '3rd Tab',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}