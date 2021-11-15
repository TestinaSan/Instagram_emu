import 'package:flutter/material.dart';

class StackItem extends StatefulWidget {
  StackItem({Key? key}) : super(key: key);

  @override
  _StackItemState createState() => _StackItemState();
}

class _StackItemState extends State<StackItem> {
  // declaration variables
  Color _like = Colors.white;
  int _countLikes = 1;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image(image: AssetImage('assets/ReelTest.webp')),
        Row(
          children: <Widget>[
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                    icon: Icon(Icons.favorite_outlined, color: _like)),
                IconButton(onPressed: () {}, icon: Icon(Icons.mode_comment)),
                IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
              ],
            )
          ],
        ),
      ],
    );
  }
}

class Reels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reels'),
        backgroundColor: Colors.transparent,
        actions: [
          Container(
              margin: EdgeInsets.only(right: 10), child: Icon(Icons.camera_alt))
        ],
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [for (int i = 0; i < 10; i++) StackItem()],
      ),
    );
  }
}
