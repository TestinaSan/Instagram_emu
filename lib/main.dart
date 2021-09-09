import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blueGrey[900],
        accentColor: Colors.black,
        brightness: Brightness.dark,
        fontFamily: 'Sisterhood',
      ),
      home: HomePage(title: 'Instagram'),
    );
  }
}

class ProfileStory extends StatelessWidget {
  const ProfileStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(shape: BoxShape.circle),
      child: Column(
        children: <Widget>[
          Image(image: AssetImage('assets/Profile0.jpg'), height: 40),
          Text('Profile'),
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
              Text('Username'),
              Spacer(),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined))
            ],
          ),
          Image(height: 400, image: AssetImage('assets/Profile0.jpg')),
          Row(
            children: <Widget>[
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
              IconButton(onPressed: () {}, icon: Icon(Icons.comment)),
              IconButton(onPressed: () {}, icon: Icon(Icons.send)),
              Spacer(),
              IconButton(onPressed: () {}, icon: Icon(Icons.bookmark_border))
            ],
          )
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final String title;
  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(title),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
          IconButton(onPressed: () {}, icon: Icon(Icons.send)),
        ],
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 100.0,
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
          Divider(),
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
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_collection_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shop_outlined), label: ''),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/Profile0.jpg')), label: '')
        ],
      ),
    );
  }
}
