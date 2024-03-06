import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  const FirstTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.pink[50],
      child: Center(
        child: Text(
          '1st Tab',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}