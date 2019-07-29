import 'package:flutter/material.dart';

class InvokeGroupItem extends StatelessWidget {

  final String invokeGroupName;
  final String _invokeGroupImagePath;
  final Function _invokeGroupCallback;

  InvokeGroupItem(this.invokeGroupName, this._invokeGroupImagePath, this._invokeGroupCallback);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GestureDetector(
            onTap: () => this._invokeGroupCallback(context, this.invokeGroupName),
            child: Card(
              elevation: 3.0,
              margin: EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Image.asset(this._invokeGroupImagePath),
                  Text(this.invokeGroupName)
                ],
              ),
            ),
        )
    );
  }
}
