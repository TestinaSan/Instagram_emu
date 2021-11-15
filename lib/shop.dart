import 'package:flutter/material.dart';

class Shop extends StatelessWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.bookmark_add_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.menu_rounded))
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        children: [
          for (int i = 0; i < 80; i++)
            Image(image: AssetImage('assets/ShopExample.jpg'))
        ],
      ),
    );
  }
}
