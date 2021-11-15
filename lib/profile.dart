import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  final TextStyle _textStyle;
  StoryItem(this._textStyle);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.all(5),
                height: 70,
                child: Image(image: AssetImage('assets/EvidenceStories.jpg'))),
            Text('Story', style: _textStyle),
          ],
        ));
  }
}

class Profile extends StatelessWidget {
  final int _posts = 5;
  final int _followers = 102;
  final int _following = 153;
  final TextStyle _numberStyle =
      TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  final TextStyle _textStyle = TextStyle(fontSize: 15);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Username'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add_box_outlined)),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.menu_rounded)),
          )
        ],
      ),
      body: ListView(
        children: [
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                height: 100,
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Image(image: AssetImage('assets/Profile0.jpg')),
              ),
              VerticalDivider(width: 25),
              Column(children: <Widget>[
                Text('$_posts', style: _numberStyle),
                Divider(height: 5),
                Text('Post', style: _textStyle)
              ]),
              VerticalDivider(width: 20),
              Column(children: <Widget>[
                Text('$_followers', style: _numberStyle),
                Divider(height: 5),
                Text('Followers', style: _textStyle)
              ]),
              VerticalDivider(width: 20),
              Column(children: <Widget>[
                Text('$_following', style: _numberStyle),
                Divider(height: 5),
                Text('Following', style: _textStyle)
              ]),
            ],
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: Text(
                '  -  Biography  -\nName, Surname, Age\nLiving, Work\nHobbies, Features'),
          ),
          Container(
            alignment: Alignment.center,
            height: 35,
            margin: EdgeInsets.fromLTRB(20, 5, 20, 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.white)),
            child: TextButton(
              onPressed: () {},
              child: Text('Edit account', style: _textStyle),
            ),
          ),
          SizedBox(
            height: 101,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [for (int i = 0; i < 10; i++) StoryItem(_textStyle)],
            ),
          ),
          Divider(height: 10),
        ],
      ),
    );
  }
}
