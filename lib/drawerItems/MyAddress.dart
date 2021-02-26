import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAddress extends StatefulWidget {
  @override
  _MyAddressState createState() => _MyAddressState();
}

class _MyAddressState extends State<MyAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new RaisedButton(
            onPressed: () {},
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Text('Button with text and icon!'),
                new Icon(Icons.lightbulb_outline),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
