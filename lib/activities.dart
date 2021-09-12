import 'package:flutter/material.dart';

class ListTileField extends StatelessWidget {
  final String imagePath;
  final String name;
  final String label;
  ListTileField(this.imagePath, this.name, this.label);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 50,
      child: ListTile(
        leading: Container(
          decoration: BoxDecoration(shape: BoxShape.circle),
          child: Image(image: AssetImage(imagePath), fit: BoxFit.fill),
        ),
        title: Text(name, style: TextStyle(color: Colors.white)),
        subtitle: Text(label, style: TextStyle(color: Colors.white)),
        onTap: () {},
      ),
    );
  }
}

class Activieties extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black, title: Text('Activities')),
      body: ListView(
        children: [
          ListTileField('assets/Profile0.jpg', 'Nothing new to see',
              'See your previews activities'),
          ListTile(title: Text('Today', style: TextStyle(color: Colors.white))),
          ListTileField('assets/Profile0.jpg', 'Nothing new to see',
              'See your previews activities'),
          ListTile(
              title: Text('Before', style: TextStyle(color: Colors.white))),
          ListTileField('assets/Profile0.jpg', 'Nothing new to see',
              'See your previews activities'),
          Divider(height: 15),
          ListTileField('assets/Profile0.jpg', 'Nothing new to see',
              'See your previews activities'),
          Divider(height: 15),
          ListTileField('assets/Profile0.jpg', 'Nothing new to see',
              'See your previews activities'),
          Divider(height: 15),
        ],
      ),
    );
  }
}
