import 'package:driveaways/LoginScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            shadowColor: Colors.white,
            backgroundColor: Color.fromRGBO(163, 177, 251, 1),
            leading: new IconButton(
                icon: new Icon(Icons.arrow_back_ios, color: Colors.white),
                onPressed: () {
                  Navigator.of(context).pop(context);
                }),
          ),
          body: Stack(
            children: <Widget>[
              // Stack (
              //   children: <Widget>[
              Container(
                height: 250,
                color: Color.fromRGBO(163, 177, 251, 1),
                child: new Image(
                  image: new AssetImage('assets/building.png'),
                  fit: BoxFit.cover,
                ),
              ),
              // ],
              // ),

              SingleChildScrollView(
                child: Container(
                  width: 500,
                  margin: EdgeInsets.only(top: 120, left: 25, right: 25),
                  padding: new EdgeInsets.all(10.0),
                  child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      shadowColor: Colors.blueGrey,
                      color: Colors.white,
                      elevation: 5,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          SizedBox(
                            width: double.infinity,
                            child: Padding(
                              padding: EdgeInsets.only(top: 25, left: 25),
                              child: RichText(
                                  textAlign: TextAlign.start,
                                  text: TextSpan(
                                      text: 'Sign In ',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: 'with your Email',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.normal))
                                      ])),
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: Padding(
                              padding: EdgeInsets.only(left: 25, top: 25),
                              child: Text(
                                'Email',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: 25, top: 8, right: 25),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  labelStyle: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                  hintText: 'Enter email'),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please eneter email';
                                }
                              },
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: Padding(
                              padding: EdgeInsets.only(left: 25, top: 25),
                              child: Text(
                                'Password',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 25, right: 25),
                            child: TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  labelStyle: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                  hintText: 'Enter password'),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please eneter password';
                                }
                              },
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: Container(
                              margin: EdgeInsets.all(25),
                              child: FlatButton(
                                child: Text(
                                  'Sign In',
                                  style: TextStyle(fontSize: 20.0),
                                ),
                                color: Colors.black,
                                textColor: Colors.white,
                                onPressed: () {},
                              ),
                            ),
                          ),
                          SizedBox(
                              width: double.infinity,
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 25),
                                child: Text(
                                  'Don\'t have an account?',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 14),
                                ),
                              )),
                        ],
                      )),
                ),
              )
            ],
          )),
    );
  }
}
