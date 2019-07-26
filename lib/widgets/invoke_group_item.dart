import 'package:flutter/material.dart';

class InvokeGroupItem extends StatelessWidget {
  final String invokeGroupName;

  InvokeGroupItem(this.invokeGroupName);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 3.0,
        margin: EdgeInsets.all(8.0),
        child: Text(this.invokeGroupName),
      ),
    );
  }
}
