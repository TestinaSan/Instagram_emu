import 'package:flutter/material.dart';
import 'package:instagram_emu/activities.dart';
import 'package:instagram_emu/dm%20page.dart';

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
          Text('Profile'),
        ],
      ),
    );
  }
}

class PostField extends StatefulWidget {
  PostField({Key? key}) : super(key: key);

  @override
  _PostFieldState createState() => _PostFieldState();
}

class _PostFieldState extends State<PostField> {
  // initialize colors
  Color _like = Colors.white;
  Color _save = Colors.white;
  int _countLikes = 1;
  int _countSaves = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Image.asset('assets/Profile0.jpg', width: 40)),
              Text('Username'),
              Spacer(),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined))
            ],
          ),
          Image.asset(
            'assets/InstagramLogo.jpg',
            width: 400,
          ),
          Row(
            children: <Widget>[
              IconButton(
                  onPressed: () {
                    setState(() {
                      if ((_countLikes % 2) == 0)
                        _like = Colors.white;
                      else
                        _like = Colors.red;
                      _countLikes++;
                    });
                  },
                  icon: Icon(
                    Icons.favorite_outlined,
                    color: _like,
                  )),
              IconButton(onPressed: () {}, icon: Icon(Icons.comment)),
              IconButton(onPressed: () {}, icon: Icon(Icons.send)),
              Spacer(),
              IconButton(
                onPressed: () {
                  setState(() {
                    if ((_countSaves % 2) == 0)
                      _save = Colors.white;
                    else
                      _save = Colors.black;
                    _countSaves++;
                  });
                },
                icon: Icon(Icons.bookmark),
                color: _save,
              )
            ],
          )
        ],
      ),
    );
  }
}

class PostsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram'),
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
            icon: Icon(Icons.send),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 101.0,
            child: ListView.builder(
              itemCount: 15,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, i) => ProfileStory(),
            ),
          ),
          Divider(height: 0, color: Colors.white, indent: 15, endIndent: 15),
          for (int i = 0; i < 100; i++)
            Column(
              children: [PostField()],
            ),
        ],
      ),
    );

    /* 
     * Metodo alternativo usando CustomScrollView & Slivers
     * 
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 101.0,
            child: ListView.builder(
              itemCount: 15,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, i) => ProfileStory(),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Divider(
              height: 0, color: Colors.white, indent: 15, endIndent: 15),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
              (context, i) => Column(
                    children: [PostField(), Divider(height: 20)],
                  ),
              childCount: 100),
        )
      ],
    ); */
  }
}
