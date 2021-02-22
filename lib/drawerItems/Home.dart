import 'package:driveaways/drawerItems/Destination.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  static const String routeName = '/homePage';
  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<MyHomePage> {
  int pageNo;
  GoogleMapController myController;
  void initState() {
    pageNo = 0;
  }

  final LatLng _center = const LatLng(45.52, -122.67);

  void _onMapCreated(GoogleMapController controller) {
    myController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Color.fromRGBO(142, 156, 227, 1),
        body: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Container(
                width: 500,
                margin: EdgeInsets.only(top: 25, left: 25, right: 25),
                padding: new EdgeInsets.all(15.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  shadowColor: Colors.grey,
                  color: Colors.white,
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.all(4),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        SizedBox(
                          width: double.infinity,
                          height: 400,
                          child: GoogleMap(
                              onMapCreated: _onMapCreated,
                              initialCameraPosition:
                                  CameraPosition(target: _center, zoom: 10.0)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 25, top: 8, right: 25),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                labelStyle: TextStyle(
                                    fontSize: 20, color: Colors.black),
                                hintText: 'Enter Start Point'),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter start point';
                              }
                            },
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Container(
                            margin: EdgeInsets.all(25),
                            child: RaisedButton(
                              onPressed: () {},
                              child: Text(
                                'Set Pickup',
                                style: TextStyle(fontSize: 20.0),
                              ),
                              color: Colors.black,
                              textColor: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 25, top: 8, right: 25),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                labelStyle: TextStyle(
                                    fontSize: 20, color: Colors.black),
                                hintText: 'Enter Destination'),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter end point';
                              }
                            },
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Container(
                            margin: EdgeInsets.all(25),
                            child: RaisedButton(
                              onPressed: () {},
                              child: Text(
                                'Set Destination',
                                style: TextStyle(fontSize: 20.0),
                              ),
                              color: Colors.black,
                              textColor: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
    //     GoogleMap(
    //   onMapCreated: _onMapCreated,
    //   initialCameraPosition: CameraPosition(
    //     target: _center,
    //     zoom: 11.0,
    //   ),
    // ));
  }

  getPage() {
    switch (pageNo) {
      case 1:
        return Destination();
        break;

      default:
    }
  }
}
