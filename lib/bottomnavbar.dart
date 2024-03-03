import 'package:flutter/material.dart';
import 'package:my_app/pages/home.dart';
import 'package:my_app/pages/inbox.dart';
import 'package:my_app/pages/profile.dart';
import 'package:my_app/pages/settings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    UserHome(),
    Inbox(),
    Settings(),
    Profile()   
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items: [
         BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'), 
         BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Inbox'), 
         BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'), 
         BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'), 
        ]
      ),
    );
  }
}