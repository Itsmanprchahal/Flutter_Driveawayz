import 'dart:core';

import 'package:flutter/cupertino.dart';

class MyDriveModel {
  String image;
  String username;
  String date;
  String price;
  String pickUpPoint;
  String dropPoint;

  MyDriveModel(
      {this.image,
      this.username,
      this.date,
      this.price,
      this.pickUpPoint,
      this.dropPoint});
}
