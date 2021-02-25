import 'package:driveaways/Dashboard.dart';
import 'package:driveaways/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _SignUp2 createState() => _SignUp2();
}

class _SignUp2 extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white,
        backgroundColor: Color.fromRGBO(163, 177, 251, 1),
        leading: new IconButton(
            icon: new Icon(Icons.arrow_back_ios),
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
              margin: EdgeInsets.only(top: 120, left: 15, right: 15),
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
                        padding: EdgeInsets.only(top: 25),
                        child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text: 'Payment Information',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.only(left: 25, top: 25),
                        child: Text(
                          'Card Number',
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25, top: 8, right: 25),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.credit_card,
                              color: Colors.black,
                            ),
                            labelStyle:
                                TextStyle(fontSize: 20, color: Colors.black),
                            hintText: 'Card number'),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.only(left: 25, top: 25),
                        child: Text(
                          'Name on Card',
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
                            hintText: 'Name on Card'),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 10),
                        width: MediaQuery.of(context).size.width - 80,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        text: 'Expiry Month',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 25, right: 5),
                                    child: TextFormField(
                                      keyboardType: TextInputType.name,
                                      decoration: InputDecoration(
                                          labelStyle: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black),
                                          hintText: ' MM'),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        text: 'Expiry Year',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  Padding(
                                    padding: EdgeInsets.only(left: 5, right: 5),
                                    child: TextFormField(
                                      keyboardType: TextInputType.name,
                                      decoration: InputDecoration(
                                          labelStyle: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black),
                                          hintText: ' YY'),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        text: 'CVV',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 5, right: 25),
                                    child: TextFormField(
                                      keyboardType: TextInputType.name,
                                      decoration: InputDecoration(
                                        labelStyle: TextStyle(
                                            fontSize: 20, color: Colors.black),
                                        hintText: ' CVV',
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: CheckboxListTile(
                        value: true,
                        onChanged: null,
                        subtitle:
                            Text('I agree to Driverville\'s Terms of Service'),
                        activeColor: Colors.green,
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Container(
                        margin: EdgeInsets.all(25),
                        child: FlatButton(
                          child: Text(
                            'Complete Registation',
                            style: TextStyle(fontSize: 20.0),
                          ),
                          color: Colors.black,
                          textColor: Colors.white,
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Dashboard();
                            }));
                          },
                        ),
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
