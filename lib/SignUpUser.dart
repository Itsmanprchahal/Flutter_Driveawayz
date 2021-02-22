import 'package:driveaways/SignUp1.dart';
import 'package:flutter/material.dart';

class SignUpUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _SignUpUserState createState() => _SignUpUserState();
}

class _SignUpUserState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white,
        backgroundColor: Color.fromRGBO(163, 177, 251, 1),
        leading: new IconButton(
            icon: new Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
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
                            'Name',
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
                              hintText: 'Enter name'),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: EdgeInsets.only(left: 25, top: 25),
                          child: Text(
                            'Email',
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
                              hintText: 'email@gmail.com'),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: EdgeInsets.only(left: 25, top: 25),
                          child: Text(
                            'Date of birth',
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
                              hintText: 'DD/MM/YYYY'),
                        ),
                      ),
                      RichText(
                          textAlign: TextAlign.start,
                          text: TextSpan(
                            text: 'Mailing Address',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.normal),
                          )),
                      SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: EdgeInsets.only(left: 25, top: 25),
                          child: Text(
                            'Street',
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
                              hintText: '#451,1 Street'),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 100,
                        child: Padding(
                          padding: EdgeInsets.only(left: 25, top: 25),
                          child: Text(
                            'Address',
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
                              hintText: 'Street'),
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
                                return SignUp1();
                              }));
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }
}
