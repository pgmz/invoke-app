import 'package:flutter/material.dart';

class TextMessage extends StatelessWidget {

  final String message;

  TextMessage(this.message);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
      margin: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
      width: 90.0,
      height: 60.0,
      decoration: BoxDecoration(color : Colors.black12),
      child: Text(this.message),
    );
  }

}