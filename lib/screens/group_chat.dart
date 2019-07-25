import 'package:flutter/material.dart';
import 'package:invoker/widgets/text_message.dart';
import 'package:invoker/widgets/message_box.dart';

class GroupChat extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GroupChatState();
}

class _GroupChatState extends State<GroupChat> {
  List<TextMessage> _textMsgList = [
    TextMessage("Hola"),
    TextMessage("Como estás"),
  ];

  _GroupChatState();

  addTextMessage(String message) {
    setState(() {
      _textMsgList.add(TextMessage(message));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
          ),
          title: Text("group chat"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.history),
            ),
            IconButton(
              icon: Icon(Icons.more_horiz),
            )
          ],
        ),
        body: Column(
          children: <Widget>[
            Flexible(
                child: ListView.builder(
              padding: new EdgeInsets.all(8.0),
              itemBuilder: (_, int index) => _textMsgList[index],
              itemCount: _textMsgList.length,
            )),
            MessageBox(addTextMessage)
          ],
        ));
  }
}
