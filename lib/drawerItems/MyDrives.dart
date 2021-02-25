import 'dart:math';

import 'package:driveaways/drawerItems/CustomMyDriveLayout.dart';
import 'package:driveaways/mydriveModel/MyDrivesModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_segmented_control/material_segmented_control.dart';

class MyDrives extends StatefulWidget {
  @override
  _MyDrivesState createState() => _MyDrivesState();
}

class MyHomePage extends StatefulWidget {
  @override
  _MyDrivesState createState() => _MyDrivesState();
}

class _MyDrivesState extends State<MyDrives> {
  int _currentSelection = 0;
  @override
  Widget build(BuildContext context) {
    List<MyDriveModel> myDrives = [
      MyDriveModel(
          image:
              "https://www.whats-on-netflix.com/wp-content/uploads/2019/05/Pokemon-Detective-Pikachu-Netflix.jpg",
          username: "Manpreet",
          date: "25/Feb/2021",
          price: "\$25",
          pickUpPoint: "Ludhiana",
          dropPoint: "Chandigarh"),
      MyDriveModel(
          image:
              "https://www.whats-on-netflix.com/wp-content/uploads/2019/05/Pokemon-Detective-Pikachu-Netflix.jpg",
          username: "Manpreet",
          date: "25/Feb/2021",
          price: "\$25",
          pickUpPoint: "Ludhiana",
          dropPoint: "Chandigarh"),
      MyDriveModel(
          image:
              "https://www.whats-on-netflix.com/wp-content/uploads/2019/05/Pokemon-Detective-Pikachu-Netflix.jpg",
          username: "Manpreet",
          date: "25/Feb/2021",
          price: "\$25",
          pickUpPoint: "Ludhiana",
          dropPoint: "Chandigarh"),
      MyDriveModel(
          image:
              "https://www.whats-on-netflix.com/wp-content/uploads/2019/05/Pokemon-Detective-Pikachu-Netflix.jpg",
          username: "Manpreet",
          date: "25/Feb/2021",
          price: "\$25",
          pickUpPoint: "Ludhiana",
          dropPoint: "Chandigarh"),
      MyDriveModel(
          image:
              "https://www.whats-on-netflix.com/wp-content/uploads/2019/05/Pokemon-Detective-Pikachu-Netflix.jpg",
          username: "Manpreet",
          date: "25/Feb/2021",
          price: "\$25",
          pickUpPoint: "Ludhiana",
          dropPoint: "Chandigarh"),
      MyDriveModel(
          image:
              "https://www.whats-on-netflix.com/wp-content/uploads/2019/05/Pokemon-Detective-Pikachu-Netflix.jpg",
          username: "Manpreet",
          date: "25/Feb/2021",
          price: "\$25",
          pickUpPoint: "Ludhiana",
          dropPoint: "Chandigarh"),
      MyDriveModel(
          image:
              "https://www.whats-on-netflix.com/wp-content/uploads/2019/05/Pokemon-Detective-Pikachu-Netflix.jpg",
          username: "Manpreet",
          date: "25/Feb/2021",
          price: "\$25",
          pickUpPoint: "Ludhiana",
          dropPoint: "Chandigarh"),
      MyDriveModel(
          image:
              "https://www.whats-on-netflix.com/wp-content/uploads/2019/05/Pokemon-Detective-Pikachu-Netflix.jpg",
          username: "Manpreet",
          date: "25/Feb/2021",
          price: "\$25",
          pickUpPoint: "Ludhiana",
          dropPoint: "Chandigarh"),
      MyDriveModel(
          image:
              "https://www.whats-on-netflix.com/wp-content/uploads/2019/05/Pokemon-Detective-Pikachu-Netflix.jpg",
          username: "Manpreet",
          date: "25/Feb/2021",
          price: "\$25",
          pickUpPoint: "Ludhiana",
          dropPoint: "Chandigarh"),
      MyDriveModel(
          image:
              "https://www.whats-on-netflix.com/wp-content/uploads/2019/05/Pokemon-Detective-Pikachu-Netflix.jpg",
          username: "Manpreet",
          date: "25/Feb/2021",
          price: "\$25",
          pickUpPoint: "Ludhiana",
          dropPoint: "Chandigarh")
    ];

    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            MaterialSegmentedControl(
              children: _children,
              selectionIndex: _currentSelection,
              borderColor: Colors.black,
              selectedColor: Colors.black,
              unselectedColor: Colors.white,
              borderRadius: 8.0,
              disabledChildren: _disabledIndices,
              onSegmentChosen: (index) {
                setState(() {
                  _currentSelection = index;
                });
              },
            ),
            SizedBox(
              height: 12,
            ),
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(top: 1, left: 15, right: 15),
                child: ListView.builder(
                    itemCount: myDrives.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ListView.builder(
                          itemCount: myDrives.length,
                          shrinkWrap: true,
                          padding: EdgeInsets.only(top: 15),
                          itemBuilder: (context, index) {
                            return CustomMyDriveLayout(
                              image: myDrives[index].image,
                              username: myDrives[index].username,
                              date: myDrives[index].date,
                              pickUpPoint: myDrives[index].pickUpPoint,
                              dropPoint: myDrives[index].dropPoint,
                            );
                          });
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Map<int, Widget> _children = {
  0: Text('    Future Rides    '),
  1: Text('    Past Rides    '),
};

// Holds all indices of children to be disabled.
// Set this list either null or empty to have no children disabled.
List<int> _disabledIndices = [];

int _randomInt() {
  return Random.secure().nextInt(_children.length);
}
