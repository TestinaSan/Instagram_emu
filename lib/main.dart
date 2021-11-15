import 'package:flutter/material.dart';
import 'package:instagram_emu/explore.dart';
import 'package:instagram_emu/posts.dart';
import 'package:instagram_emu/profile.dart';
import 'package:instagram_emu/reels.dart';
import 'package:instagram_emu/shop.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData.dark(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<Widget> _screens = <Widget>[
    PostsScreen(),
    Explore(),
    Reels(),
    Shop(),
    Profile(),
  ];

  void _onTappedItem(int index) {
    if (index > _screens.length - 1) return;
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.white), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.white), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_collection_outlined, color: Colors.white),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.shop_outlined, color: Colors.white), label: ''),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/Profile0.jpg')), label: ''),
        ],
        currentIndex: _selectedIndex,
        onTap: _onTappedItem,
      ),
    );
  }
}
