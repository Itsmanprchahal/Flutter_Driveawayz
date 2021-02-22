import 'package:driveaways/MobileNumberScreen.dart';
import 'package:driveaways/SignUpUser.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:driveaways/SignIn.dart';
import 'package:driveaways/SignUp.dart';

import 'SignUp1.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: MyHomePage(context)),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final BuildContext context;

  MyHomePage(this.context);

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/splash_bc.png'), fit: BoxFit.cover)),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(100),
              child: Center(
                child: Container(
                  child: Image.asset('assets/logo.png'),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 40, right: 40),
              child: FlatButton(
                minWidth: 400.0,
                height: 50,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    side: BorderSide(color: Colors.white)),
                child: Text(
                  "Sign In",
                  style: TextStyle(fontSize: 20.0),
                ),
                color: Colors.transparent,
                textColor: Colors.white,
                onPressed: () {
                  navigateToSubPage(context);
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40, left: 40, right: 40),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Divider(
                      color: Colors.white,
                      height: 2,
                    ),
                  ),
                  Text(
                    '   OR   ',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Expanded(
                      child: Divider(
                    color: Colors.white,
                    height: 2,
                  ))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40, left: 40, right: 40),
              child: FlatButton(
                minWidth: 400.0,
                height: 50,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    side: BorderSide(color: Colors.white)),
                child: Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 20.0),
                ),
                color: Colors.transparent,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SignUpUser();
                  }));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future navigateToSubPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return SignIn();
    }));
  }
}
