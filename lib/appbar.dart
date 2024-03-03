import 'package:flutter/material.dart';
import 'package:my_app/pages/firstpage.dart';
import 'package:my_app/pages/secondpage.dart';

class AppBarHome extends StatelessWidget {
  AppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
        appBar: AppBar(
          backgroundColor: Colors.pink[100],
          elevation: 0,
          title: Text('E L B I S H A R E'),
          // leading: IconButton(
          //   onPressed: () {},
          //   icon: Icon(Icons.menu)
          // ),
          // actions: [
          //   IconButton(
          //     onPressed: () {},
          //     icon: Icon(Icons.settings)
          //   ),
          //   IconButton(
          //     onPressed: () {},
          //     icon: Icon(Icons.person)
          //   ),
          // ],
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.pink[100],
            child: ListView(
              children: [
                DrawerHeader(
                  child: Center(child: Text(
                    'E L B I S H A R E',
                    style: TextStyle(fontSize: 20),
                    )
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: const Text(
                    'Page 1',
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => FirstPage())
                    );
                  }
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: const Text(
                    'Page 2',
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SecondPage())
                    );
                  }
                )
              ],
            ),
          ),
        ),
    );
  }
}
