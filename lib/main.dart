import 'package:flutter/material.dart';
import 'package:instagram_emu/activities.dart';
import 'package:instagram_emu/dm%20page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(title: 'Instagram'),
    );
  }
}

class ProfileStory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Image(image: AssetImage('assets/Profile0.jpg'), height: 40),
          Divider(height: 5),
          Text('Profile', style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}

class PostField extends StatelessWidget {
  const PostField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Image(
                      image: AssetImage('assets/Profile0.jpg'), height: 40)),
              Text('Username', style: TextStyle(color: Colors.white)),
              Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert_outlined,
                    color: Colors.white,
                  ))
            ],
          ),
          Image(height: 400, image: AssetImage('assets/InstagramLogo.jpg')),
          Row(
            children: <Widget>[
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_outlined, color: Colors.white)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.comment, color: Colors.white)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.send, color: Colors.white)),
              Spacer(),
              IconButton(onPressed: () {}, icon: Icon(Icons.bookmark))
            ],
          )
        ],
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[];

  void _onTappedItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(widget.title),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt)),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Activieties()));
              },
              icon: Icon(Icons.favorite)),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => DMPage()));
              },
              icon: Icon(Icons.send)),
        ],
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 101.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ProfileStory(),
                ProfileStory(),
                ProfileStory(),
                ProfileStory(),
                ProfileStory(),
                ProfileStory(),
                ProfileStory(),
                ProfileStory(),
                ProfileStory(),
                ProfileStory(),
                ProfileStory(),
              ],
            ),
          ),
          Divider(height: 0, color: Colors.white, indent: 15, endIndent: 15),
          Divider(height: 20),
          PostField(),
          Divider(height: 20),
          PostField(),
          Divider(height: 20),
          PostField(),
          Divider(height: 20),
          PostField(),
          Divider(height: 20),
          PostField(),
          Divider(height: 20),
          PostField(),
          Divider(height: 20),
          PostField(),
          Divider(height: 20),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white),
            label: 'Home',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.white),
            label: 'Search',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_collection_outlined, color: Colors.white),
            label: 'Reels',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop_outlined, color: Colors.white),
            label: 'Shop',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/Profile0.jpg')),
            label: 'Profile',
            backgroundColor: Colors.black,
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onTappedItem,
      ),
    );
  }
}
