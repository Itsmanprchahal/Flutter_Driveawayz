import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomMyDriveLayout extends StatefulWidget {
  String image;
  String username;
  String date;
  String price;
  String pickUpPoint;
  String dropPoint;

  CustomMyDriveLayout(
      {this.image,
      this.username,
      this.date,
      this.price,
      this.pickUpPoint,
      this.dropPoint});

  @override
  _CustomMyDriveLayoutState createState() => _CustomMyDriveLayoutState();
}

class _CustomMyDriveLayoutState extends State<CustomMyDriveLayout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        shadowColor: Colors.grey,
        color: Colors.white,
        elevation: 5,
        child: Row(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image(
                image: NetworkImage(widget.image),
                width: 80,
                height: 80,
                fit: BoxFit.fill,
              ),
            )
          ],
        ),
      ),
    );
  }
}
