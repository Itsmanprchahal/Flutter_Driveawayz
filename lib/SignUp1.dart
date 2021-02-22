import 'package:driveaways/main.dart';
import 'package:flutter/material.dart';

import 'SignUp2.dart';

class SignUp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _SignUp1 createState() => _SignUp1();
}

class _SignUp1 extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          shadowColor: Colors.white,
          backgroundColor: Color.fromRGBO(163, 177, 251, 1),
          leading: new IconButton(
              icon: new Icon(Icons.arrow_back_ios),
              color: Colors.white,
              onPressed: () {
                Navigator.of(context).pop(context);
              })),
      body: Stack(
        children: [
          Container(
            height: 250,
            color: Color.fromRGBO(163, 177, 251, 1),
            child: new Image(
              image: new AssetImage('assets/building.png'),
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
              child: Container(
                  child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.only(top: 25, left: 40),
                  child: RichText(
                      textAlign: TextAlign.start,
                      text: TextSpan(
                          text: 'Tell us about ',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.normal),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'your vehicle',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold))
                          ])),
                ),
              ),
              Container(
                width: 500,
                margin: EdgeInsets.only(top: 10, left: 25, right: 25),
                padding: new EdgeInsets.all(10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  shadowColor: Colors.blueGrey,
                  color: Colors.white,
                  elevation: 5,
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: EdgeInsets.only(left: 25, top: 25),
                          child: Text(
                            'Make',
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 25, top: 8, right: 25),
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              labelStyle:
                                  TextStyle(fontSize: 20, color: Colors.black),
                              hintText: 'Enter make'),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: EdgeInsets.only(left: 25, top: 25),
                          child: Text('Type',
                              textAlign: TextAlign.start,
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 25, top: 8, right: 25),
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              labelStyle:
                                  TextStyle(fontSize: 20, color: Colors.black),
                              hintText: 'Enter type'),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: EdgeInsets.only(left: 25, top: 25),
                          child: Text('Year',
                              textAlign: TextAlign.start,
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 25, top: 8, right: 25),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelStyle:
                                  TextStyle(fontSize: 20, color: Colors.black),
                              hintText: 'Enter year'),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: EdgeInsets.only(left: 25, top: 25),
                          child: Text('Transmission',
                              textAlign: TextAlign.start,
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 25, top: 8, right: 25),
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              labelStyle:
                                  TextStyle(fontSize: 20, color: Colors.black),
                              hintText: 'Enter transmission'),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: EdgeInsets.only(left: 25, top: 25),
                          child: Text('Licence Plate #',
                              textAlign: TextAlign.start,
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 25, top: 8, right: 25),
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              labelStyle:
                                  TextStyle(fontSize: 20, color: Colors.black),
                              hintText: 'Enter licence plate#'),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: EdgeInsets.only(left: 25, top: 25),
                          child: Text('State',
                              textAlign: TextAlign.start,
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 25, top: 8, right: 25),
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              labelStyle:
                                  TextStyle(fontSize: 20, color: Colors.black),
                              hintText: 'Enter state'),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Container(
                          margin: EdgeInsets.all(25),
                          child: FlatButton(
                            child: Text(
                              'Next',
                              style: TextStyle(fontSize: 20.0),
                            ),
                            color: Colors.black,
                            textColor: Colors.white,
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return SignUp2();
                              }));
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )))
        ],
      ),
    );
  }
}
