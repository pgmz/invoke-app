import 'package:flutter/material.dart';
import 'package:invoker/widgets/invoke_group_item.dart';
import 'package:invoker/util/group_chat_utils.dart';
import 'package:invoker/widgets/groups_home_drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<InvokeGroupItem> invokeGroups = [];

  goToGroupChat(BuildContext context, String groupChatName) {
    Navigator.pushNamed(context, '/groupChat',
        arguments: GroupChatArguments(groupChatName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new Builder(
          builder: (BuildContext context) {
            return IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                });
          },
        ),
        title: Text("My Groups"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
          ),
        ],
      ),
      drawer: HomePageDrawer(),
      body: Column(
        children: <Widget>[
          Flexible(
            child: ListView(
              padding: new EdgeInsets.all(8.0),
              children: [
                InvokeGroupItem("My Group 1", "assets/images/hiking_group.jpg",
                    goToGroupChat),
                InvokeGroupItem("My Group 2", "assets/images/music_group.jpg",
                    goToGroupChat),
                InvokeGroupItem("My Group 3", "assets/images/pizza_group.jpg",
                    goToGroupChat)
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("New Group!"),
      ),
    );
  }
}
