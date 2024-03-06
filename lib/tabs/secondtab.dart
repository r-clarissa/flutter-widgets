import 'package:flutter/material.dart';

class SecondTab extends StatelessWidget {
  const SecondTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.pink[100],
      child: Center(
        child: Text(
          '2nd Tab',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}