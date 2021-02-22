import 'dart:async';
import 'dart:ui';
import 'package:driveaways/LoginScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.light,
        primaryColor: Colors.white,
        accentColor: Colors.white,

        // Define the default font family.
        fontFamily: 'Monotype Coursiva',

        // Define the TextTheme that specifies the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
            headline4: TextStyle(
                fontSize: 32.0,
                fontStyle: FontStyle.italic,
                fontFamily: 'Hind')),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stack(
        children: <Widget>[
          Image.asset('assets/splash_bc.png', fit: BoxFit.fill),
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/logo.png',
              height: 400,
              width: 400,
            ),
          ),
          // Image.asset(name)
        ],
      ),
    );
  }
}
