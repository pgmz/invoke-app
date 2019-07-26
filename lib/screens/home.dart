import 'package:flutter/material.dart';
import 'package:invoker/widgets/invoke_group_item.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<InvokeGroupItem> invokeGroups = [
    InvokeGroupItem("My Group 1"),
    InvokeGroupItem("My Group 2"),
    InvokeGroupItem("My Group 3")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Flexible(
            child: ListView(
              padding: new EdgeInsets.all(8.0),
              children: invokeGroups,
            ),
          ),
        ],
      ),
    );
  }
}
