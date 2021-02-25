import 'package:driveaways/SignUp1.dart';
import 'package:driveaways/drawerItems/Home.dart';
import 'package:driveaways/drawerItems/MyDrives.dart';
import 'package:driveaways/routes/pageRoutes.dart';
import 'package:flutter/material.dart';

import 'drawerItems/Notifications.dart';

class Dashboard extends StatelessWidget {
  @override
  final appTitle = 'Home';
  Widget build(BuildContext context) {
    // TODO: implement build
    return MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<MyHomePage> {
  int pageNo;
  @override
  void initState() {
    pageNo = 1;
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope(
        onWillPop: () async => !Navigator.of(context).userGestureInProgress,
        child: Scaffold(
          appBar: AppBar(
            shadowColor: Colors.white,
            backgroundColor: Color.fromRGBO(50, 70, 221, 1),
            title: Text('Home'),
          ),
          body: getPage(),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.all(0),
              children: <Widget>[
                DrawerHeader(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: [
                          CircleAvatar(
                            maxRadius: 30,
                            minRadius: 30,
                            backgroundColor: Colors.white,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 25, right: 5),
                            child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  text: 'John Doe',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )),
                          )
                        ],
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 20),
                          width: MediaQuery.of(context).size.width - 80,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Icon(
                                      Icons.lock_clock,
                                      color: Colors.white,
                                    ),
                                    RichText(
                                        textAlign: TextAlign.center,
                                        text: TextSpan(
                                          text: '10',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        )),
                                    SizedBox(
                                      width: double.infinity,
                                      child: Padding(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text(
                                          'Total hours',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 10, color: Colors.grey),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Icon(
                                      Icons.card_travel,
                                      color: Colors.white,
                                    ),
                                    RichText(
                                        textAlign: TextAlign.center,
                                        text: TextSpan(
                                          text: '2000KM',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        )),
                                    SizedBox(
                                      width: double.infinity,
                                      child: Padding(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text(
                                          'Total Disitace',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 10, color: Colors.grey),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Icon(
                                      Icons.calendar_today,
                                      color: Colors.white,
                                    ),
                                    RichText(
                                        textAlign: TextAlign.end,
                                        text: TextSpan(
                                          text: '60',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        )),
                                    SizedBox(
                                      width: double.infinity,
                                      child: Padding(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text(
                                          'Total Jobs',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 10, color: Colors.grey),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(
                      50,
                      70,
                      221,
                      1,
                    ),
                  ),
                ),
                ListTile(
                    title: Row(
                      children: <Widget>[
                        Icon(Icons.home),
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text('Home'),
                        )
                      ],
                    ),
                    onTap: () {
                      setState(() {
                        pageNo = 1;
                      });
                      Navigator.pop(context);
                    }),
                ListTile(
                    title: Row(
                      children: <Widget>[
                        Icon(Icons.home),
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text('My Drives'),
                        )
                      ],
                    ),
                    onTap: () {
                      setState(() {
                        pageNo = 2;
                      });
                      Navigator.pop(context);
                    }),
                ListTile(
                    title: Row(
                      children: <Widget>[
                        Icon(Icons.notifications),
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text('Notifications'),
                        )
                      ],
                    ),
                    focusColor: Color.fromRGBO(50, 70, 21, 1),
                    onTap: () {
                      setState(() {
                        pageNo = 3;
                      });
                      Navigator.pop(context);
                    }),
                ListTile(
                  title: Row(
                    children: <Widget>[
                      Icon(Icons.payment),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text('Payment Method'),
                      )
                    ],
                  ),
                  onTap: () => {Navigator.of(context).pop()},
                ),
                ListTile(
                  title: Row(
                    children: <Widget>[
                      Icon(Icons.settings),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text('Settings'),
                      )
                    ],
                  ),
                  onTap: () => {},
                ),
                ListTile(
                  title: Row(
                    children: <Widget>[
                      Icon(Icons.support),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text('Support'),
                      )
                    ],
                  ),
                  onTap: () => {},
                ),
                Column(
                  children: <Widget>[
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20, top: 25),
                        child: Text(
                          'Feedback',
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 8, right: 25),
                      child: TextFormField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            labelStyle:
                                TextStyle(fontSize: 20, color: Colors.grey),
                            hintText: 'Feedback'),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Container(
                        margin: EdgeInsets.all(20),
                        child: FlatButton(
                          child: Text(
                            'SEND',
                            style: TextStyle(fontSize: 20.0),
                          ),
                          color: Colors.black,
                          textColor: Colors.white,
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }

  getPage() {
    switch (pageNo) {
      case 1:
        return Home();
        break;

      case 2:
        return MyDrives();

      case 3:
        return Notifications();

      default:
    }
  }
}
