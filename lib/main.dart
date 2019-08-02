import 'package:flutter/material.dart';
import 'screens/groups_home.dart';
import 'screens/group_chat.dart';
import 'screens/new_group.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NewGroup(),
      routes: <String, WidgetBuilder>{
        '/groupsHome': (BuildContext context) => new HomePage(),
        '/groupChat': (BuildContext context) => new GroupChat()
      },
    );
  }
}
