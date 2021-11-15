import 'package:flutter/material.dart';

class ListTileField extends StatelessWidget {
  final String imagePath;
  final String name;
  final String label;
  ListTileField(this.imagePath, this.name, this.label);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(shape: BoxShape.circle),
        child: Image(image: AssetImage(imagePath), fit: BoxFit.fill),
      ),
      title: Text(name, style: TextStyle(color: Colors.white)),
      subtitle: Text(label, style: TextStyle(color: Colors.white)),
      trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.camera_alt_outlined,
            color: Colors.white,
          )),
      onTap: () {},
    );
  }
}

class DMPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.videocam_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.open_in_new_rounded))
        ],
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: Icon(Icons.search, color: Colors.grey),
                labelText: 'Search',
                labelStyle: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          for (int i = 0; i < 30; i++)
            Column(
              children: [
                ListTileField('assets/Profile0.jpg', 'Name', 'Last message')
              ],
            )
        ],
      ),
    );
  }
}
