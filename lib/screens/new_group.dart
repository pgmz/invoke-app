import 'package:flutter/material.dart';

class NewGroup extends StatefulWidget {
  @override
  _NewGroupState createState() => _NewGroupState();
}

class _NewGroupState extends State<NewGroup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Create a new group"),
          actions: <Widget>[
            FlatButton(
              child: Text("Add"),
            )
          ],
        ),
        body: Column(
          children: <Widget>[
            Container(
              padding: new EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
              child: Container(
                padding: new EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Group name"),
                    Expanded(
                      child: TextField(),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: new EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
              child: Container(
                padding: new EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Tags"),
                    Expanded(
                      child: TextField(),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(8.0),
                children: <Widget>[
                  Container(
                    child: Text("A user"),
                  ),
                  Container(
                    child: Text("A user"),
                  ),
                  Container(
                    child: Text("A user"),
                  ),
                  Container(
                    child: Text("A user"),
                  ),
                  Container(
                    child: Text("A user"),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
