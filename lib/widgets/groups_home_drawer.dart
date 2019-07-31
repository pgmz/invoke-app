import 'package:flutter/material.dart';

class HomePageDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.face),
            iconSize: 120.0,
          ),
          Text("Your name"),
          Divider(height: 10.0, indent: 10.0, endIndent: 10.0, color: Colors.black,),

          Text("Profile"),
          Text("Settings"),
        ],
      ),
    );
  }
}
