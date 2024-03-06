import 'package:flutter/material.dart';

class AnimatedHome extends StatefulWidget {
  const AnimatedHome({super.key});

  @override
  State<AnimatedHome> createState() => _AnimatedHomeState();
}

class _AnimatedHomeState extends State<AnimatedHome> {
  // variables
  double boxHeight = 100;
  double boxWidth = 100;
  var boxColor = Colors.grey;
  double boxX = -1;
  double boxY = -1;

  // methods
  void _moveBox() {
    setState(() {
      boxX = 0;
      boxY = 0;
    }); 
  }

  void _expandBox() {
    setState(() {
      boxHeight = 300;
      boxWidth = 300;
    });
  }

  void _changeBoxColor() {
    setState(() {
      boxColor = Colors.pink;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: _moveBox,
    // onTap: _expandBox,
      onTap: _changeBoxColor,
      child: Scaffold(
        backgroundColor: Colors.pink[50],
        body: Center(
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            alignment: Alignment(boxX, boxY),
            child: Container(
              height: boxHeight,
              width: boxWidth,
              color: boxColor,
            )
          )
        )
      ),
    );
  }
}