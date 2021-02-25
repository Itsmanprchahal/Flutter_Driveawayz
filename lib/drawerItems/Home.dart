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
  bool _visible = false;

  bool isMapView = true;
  int pageNo;

  DateTime currentDate = DateTime.now();

  void initState() {
    pageNo = 0;
    _time = TimeOfDay.now();
  }

  TextEditingController timeCtl = TextEditingController();

  String timeText = 'Set A Time';
  TimeOfDay _time;
  TimeOfDay _currentTime = new TimeOfDay.now();
  String dropdownValue = 'One';
  String hours = "1";
  GoogleMapController myController;
  DateTime _selectedDate;
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
              margin: EdgeInsets.only(top: 25, left: 5, right: 5),
              padding: new EdgeInsets.all(15.0),
              child: (isMapView)
                  ? Card(
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
                              height: 350,
                              child: GoogleMap(
                                  onMapCreated: _onMapCreated,
                                  initialCameraPosition: CameraPosition(
                                      target: _center, zoom: 10.0)),
                            ),
                            Visibility(
                              visible: !_visible,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 25, top: 8, right: 25),
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
                            ),
                            Visibility(
                              visible: !_visible,
                              child: SizedBox(
                                width: double.infinity,
                                child: Container(
                                  margin: EdgeInsets.all(25),
                                  child: RaisedButton(
                                    onPressed: () {
                                      setState(() {
                                        _visible = !_visible;
                                      });
                                    },
                                    child: Text(
                                      'Set Pickup',
                                      style: TextStyle(fontSize: 20.0),
                                    ),
                                    color: Colors.black,
                                    textColor: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _visible,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 25, top: 8, right: 25),
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
                            ),
                            Visibility(
                              visible: _visible,
                              child: SizedBox(
                                width: double.infinity,
                                child: Container(
                                  margin: EdgeInsets.all(25),
                                  child: RaisedButton(
                                    onPressed: () {
                                      setState(() {
                                        isMapView = !isMapView;
                                        print(isMapView);
                                      });

                                      //Navigator.pop(context);
                                    },
                                    child: Text(
                                      'Set Destination',
                                      style: TextStyle(fontSize: 20.0),
                                    ),
                                    color: Colors.black,
                                    textColor: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  : Container(
                      width: double.infinity,
                      padding: new EdgeInsets.all(10.0),
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
                                child: Padding(
                                  padding: EdgeInsets.only(top: 15, left: 15),
                                  child: RichText(
                                      textAlign: TextAlign.start,
                                      text: TextSpan(
                                        text: 'Select Car & Other Details',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 15, top: 15),
                                  child: Text('Total number of guests',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 15, top: 15, right: 15),
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      labelStyle: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                      hintText: 'Enter guests'),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 15),
                                  //width: MediaQuery.of(context).size.width - 80,
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Column(
                                          children: <Widget>[
                                            RichText(
                                                textAlign: TextAlign.start,
                                                text: TextSpan(
                                                  text: 'Select Vehicle',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 15, right: 5),
                                                child: DropdownButton<String>(
                                                  isExpanded: true,
                                                  value: dropdownValue,
                                                  icon: Icon(
                                                      Icons.arrow_downward),
                                                  iconSize: 14,
                                                  elevation: 16,
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 15),
                                                  underline: Container(
                                                    height: 1,
                                                    color: Colors.black,
                                                  ),
                                                  onChanged: (String newValue) {
                                                    setState(() {
                                                      dropdownValue = newValue;
                                                    });
                                                  },
                                                  items: <String>[
                                                    'One',
                                                    'Two',
                                                    'Free',
                                                    'Four'
                                                  ].map<
                                                          DropdownMenuItem<
                                                              String>>(
                                                      (String value) {
                                                    return DropdownMenuItem<
                                                        String>(
                                                      value: value,
                                                      child: Text(value),
                                                    );
                                                  }).toList(),
                                                ))
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          children: <Widget>[
                                            RichText(
                                                textAlign: TextAlign.start,
                                                text: TextSpan(
                                                  text: 'How many hours?',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 15, right: 5),
                                                child: DropdownButton<String>(
                                                  isExpanded: true,
                                                  value: hours,
                                                  icon: Icon(
                                                      Icons.arrow_downward),
                                                  iconSize: 14,
                                                  elevation: 16,
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 15),
                                                  underline: Container(
                                                    height: 1,
                                                    color: Colors.black,
                                                  ),
                                                  onChanged: (String newValue) {
                                                    setState(() {
                                                      hours = newValue;
                                                    });
                                                  },
                                                  items: <String>[
                                                    '1',
                                                    '2',
                                                    '3',
                                                    '4',
                                                    '5',
                                                    '6',
                                                    '7',
                                                    '8',
                                                    '9',
                                                    '10'
                                                  ].map<
                                                          DropdownMenuItem<
                                                              String>>(
                                                      (String value) {
                                                    return DropdownMenuItem<
                                                        String>(
                                                      value: value,
                                                      child: Text(value),
                                                    );
                                                  }).toList(),
                                                ))
                                          ],
                                        ),
                                      ),
                                    ],
                                  )),
                              Container(
                                  margin: EdgeInsets.only(
                                      top: 15, left: 15, right: 15),
                                  //width: MediaQuery.of(context).size.width - 80,
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Column(
                                          children: <Widget>[
                                            RichText(
                                                textAlign: TextAlign.center,
                                                text: TextSpan(
                                                  text: 'Pickup Date',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: 5, right: 25),
                                              child: TextField(
                                                enableInteractiveSelection:
                                                    true,
                                                decoration: InputDecoration(
                                                  labelStyle: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.black),
                                                  hintText: currentDate.year
                                                          .toString() +
                                                      "/" +
                                                      currentDate.month
                                                          .toString() +
                                                      "/" +
                                                      currentDate.day
                                                          .toString(),
                                                ),
                                                onTap: () {
                                                  _selectDate(context);
                                                },
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          children: <Widget>[
                                            RichText(
                                                textAlign: TextAlign.start,
                                                text: TextSpan(
                                                  text: 'Pickup Time',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: 5, right: 25),
                                              child: TextField(
                                                enableInteractiveSelection:
                                                    true,
                                                decoration: InputDecoration(
                                                  labelStyle: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.black),
                                                  hintText:
                                                      ' ${_time.hour}:${_time.minute}',
                                                ),
                                                onTap: _pickTime,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )),
                              SizedBox(
                                width: double.infinity,
                                child: Container(
                                  margin: EdgeInsets.all(25),
                                  child: FlatButton(
                                    child: Text(
                                      'Book Driver Now',
                                      style: TextStyle(fontSize: 20.0),
                                    ),
                                    color: Colors.black,
                                    textColor: Colors.white,
                                    onPressed: () {
                                      // Navigator.push(context,
                                      //     MaterialPageRoute(builder: (context) {
                                      //   return Dashboard();
                                      // }));
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
            ),
          )
        ],
      ),
    );
    //     GoogleMap(
    //   onMapCreated: _onMapCreated,
    //   initialCameraPosition: CameraPosition(
    //     target: _center,
    //     zoom: 11.0,
    //   ),
    // ));
  }

  _pickTime() async {
    TimeOfDay time = await showTimePicker(
        context: context,
        initialTime: _time,
        builder: (BuildContext context, Widget child) {
          return Theme(data: ThemeData(), child: child);
        });

    if (time != null) {
      setState(() {
        _time = time;
      });
    }
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime pickedDate = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(2015),
        lastDate: DateTime(2050));
    if (pickedDate != null && pickedDate != currentDate)
      setState(() {
        currentDate = pickedDate;
      });
  }
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}
