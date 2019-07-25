import 'package:flutter/material.dart';

class MessageBox extends StatelessWidget {

  TextEditingController textEditingController = TextEditingController();

  Function _buttonCallback;
  MessageBox(this._buttonCallback);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          Container(
            width: 250.0,
            child: TextField(
              controller: textEditingController,
            ),
          ),
          RaisedButton(
            onPressed: () => this._buttonCallback(textEditingController.text),
            child: Text("Send"),
          )
        ],
      ),
    );
  }
}
