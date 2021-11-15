import 'package:flutter/material.dart';

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Explore')),
      body: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 5,
        crossAxisSpacing: 1,
        children: [
          // Container(
          //   margin: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          //   height: 40,
          //   child: TextField(
          //     decoration: InputDecoration(
          //       border: OutlineInputBorder(
          //         borderRadius: BorderRadius.circular(10),
          //       ),
          //       prefixIcon: Icon(Icons.search, color: Colors.grey),
          //       labelText: 'Search',
          //       labelStyle: TextStyle(color: Colors.grey),
          //       fillColor: Colors.grey[900],
          //       filled: true,
          //     ),
          //   ),
          // ),
          for (int i = 0; i < 100; i++)
            Image(image: AssetImage('assets/InstagramLogo.jpg')),
        ],
      ),
    );
  }
}
