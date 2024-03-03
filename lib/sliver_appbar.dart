import 'package:flutter/material.dart';

class SilverAppBarHome extends StatelessWidget {
  const SilverAppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      body: CustomScrollView(
        slivers: [
          // sliver app bar
          SliverAppBar(
            backgroundColor: Colors.deepPurple,
            leading: Icon(Icons.menu),
            // title: Text('S L I V E R A P P B A R'),
            expandedHeight: 300,
            // floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.deepPurple[200],
              ),
              title: Text('S L I V E R A P P B A R'),
            ),
          ),

          // sliver items
          SliverToBoxAdapter(
            child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 400,
                color: Colors.deepPurple[100],
              )
            )
            )
          ),
                    SliverToBoxAdapter(
            child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 400,
                color: Colors.deepPurple[100],
              )
            )
            )
          ),
                    SliverToBoxAdapter(
            child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 400,
                color: Colors.deepPurple[100],
              )
            )
            )
          ),
                    SliverToBoxAdapter(
            child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 400,
                color: Colors.deepPurple[100],
              )
            )
            )
          ),
        ]
      )
    );
  }
}