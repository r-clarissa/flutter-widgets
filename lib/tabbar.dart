import 'package:flutter/material.dart';
import 'package:my_app/tabs/firsttab.dart';
import 'package:my_app/tabs/secondtab.dart';
import 'package:my_app/tabs/thirdtab.dart';

class TabBarHome extends StatelessWidget {
  const TabBarHome ({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('T A B B A R'),
        ),
        body: Column(
          children: [
            TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.pink
                  )
                ),
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.pink
                  )
                ),
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.pink
                  )
                ),
              ]
            ),
            Expanded(
              child: TabBarView(children: [
                  FirstTab(),
                  SecondTab(),
                  ThirdTab(),
                ]
              ),
            )
          ],
        )
      ),
    ); 
  }
}