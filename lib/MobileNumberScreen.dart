import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class MobileNumberScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MobileNumberState createState() => _MobileNumberState();
}

class _MobileNumberState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  children: <Widget>[
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.only(top: 25, left: 25),
                        child: RichText(
                            textAlign: TextAlign.start,
                            text: TextSpan(
                              text: 'Phone Verifaction',
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
                        padding: EdgeInsets.only(left: 25, top: 10),
                        child: Text(
                          'Enter otp here',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.only(
                            bottom: 25, top: 20, left: 25, right: 25),
                        child: OTPTextField(
                          length: 4,
                          width: MediaQuery.of(context).size.width,
                          textFieldAlignment: MainAxisAlignment.spaceAround,
                          fieldWidth: 50,
                          fieldStyle: FieldStyle.underline,
                          style: TextStyle(fontSize: 17, color: Colors.black),
                          onCompleted: (pin) {
                            print("Completed: " + pin);
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: EdgeInsets.only(left: 25, right: 25),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11)),
                            margin: EdgeInsets.only(top: 70),
                            child: FlatButton(
                              child: Text(
                                'Verify Now',
                                style: TextStyle(fontSize: 20.0),
                              ),
                              color: Colors.black,
                              textColor: Colors.white,
                              onPressed: () {},
                            ),
                          ),
                        )),
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.only(top: 25, bottom: 30),
                        child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                                text: 'Didn\'t receive otp, ',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'send again!',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal))
                                ])),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
