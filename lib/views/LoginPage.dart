import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:buddieU/views/AddVerificationCode.dart';

import '../sizeConfig.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    double margin = SizeConfig.safeBlockHorizontal * 10;
    double blockHeight = SizeConfig.safeBlockVertical;
    double blockWidth = SizeConfig.safeBlockHorizontal;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                // color: Colors.red,
                height: blockHeight * 10,
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: margin),
                  // color: Colors.yellow,
                  height: blockHeight * 20,
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: blockHeight * 10,
                        // color: Colors.green,
                        child: Row(
                          children: <Widget>[
                            Container(
                              // color: Colors.white,
                              width: blockHeight * 10,
                              alignment: Alignment.center,
                              child: Image.asset("assets/logo2.png"),
                            ),
                            Expanded(
                                child: Container(
                              // color: Colors.grey,
                              alignment: Alignment.center,
                              child: Container(
                                height: blockHeight * 6,
                                // color: Colors.redAccent,
                                alignment: Alignment.centerLeft,
                                child: AutoSizeText(
                                  "buddieU",
                                  style: GoogleFonts.montserrat(fontSize: 40),
                                  minFontSize: 25,
                                ),
                              ),
                            ))
                          ],
                        ),
                        alignment: Alignment.topLeft,
                        // child: Image.asset(
                        //   'assets/logo.jpg',
                        //   fit: BoxFit.fitWidth,
                        // ),
                      ),
                      Container(
                        height: blockHeight * 5,
                        // color: Colors.green,
                        child: Row(
                          children: <Widget>[
                            Container(
                              // color: Colors.white,
                              width: blockHeight * 5,
                            ),
                            Expanded(
                                child: Container(
                              // color: Colors.greenAccent,
                              alignment: Alignment.topCenter,
                              child: Container(
                                height: blockHeight * 2.5,
                                // color: Colors.redAccent,
                                alignment: Alignment.topLeft,
                                child: AutoSizeText(
                                  "Connect with fellow students",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                  minFontSize: 15,
                                ),
                              ),
                            ))
                          ],
                        ),
                      ),
                    ],
                  )),
              Container(
                height: blockHeight * 70,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: blockHeight * 15,
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: ClipPath(
                          clipBehavior: Clip.hardEdge,
                          clipper: WaveClipperTwo(reverse: true, flip: false),
                          child: Container(
                            height: blockHeight * 25,
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(0)),
                              color: Colors.grey,
                            ),
                          )),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              color: Colors.grey, width: blockWidth)),
                      height: blockHeight * 35,
                      margin:
                          EdgeInsets.symmetric(horizontal: margin, vertical: 0),
                      alignment: Alignment.center,
                      child: Container(
                        // color: Colors.yellow,
                        height: blockHeight * 35,
                        margin: EdgeInsets.symmetric(horizontal: margin / 2),
                        alignment: Alignment.topCenter,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                                child: Container(
                              // color: Colors.green,
                              alignment: Alignment.center,
                              child: Container(
                                // color: Colors.yellow,
                                height: blockHeight * 3,
                                alignment: Alignment.center,
                                child: AutoSizeText(
                                  "Login with your phone number",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                  minFontSize: 15,
                                ),
                              ),
                            )),
                            Container(
                              height: blockHeight * 5,
                              // color: Colors.black,
                            ),
                            Expanded(
                                child: Container(
                              // color: Colors.grey,
                              alignment: Alignment.center,
                              child: Container(
                                  // color: Colors.green,
                                  height: blockHeight * 6,
                                  alignment: Alignment.centerLeft,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        // suffixIcon:
                                        //     Icon(Icons.phone, color: Colors.black),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.black, width: 3),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.black, width: 3),
                                        ),
                                        contentPadding: EdgeInsets.only(
                                          left: blockHeight * 2,
                                        ),
                                        hintText: "Enter your phone  number"),
                                  )),
                            )),
                            Container(
                              height: blockHeight * 5,
                              // color: Colors.black,
                            ),
                            Expanded(
                                child: Container(
                              // color: Colors.green,
                              alignment: Alignment.center,
                              child: Container(
                                // color: Colors.blue,
                                height: 5 * blockHeight,
                                margin:
                                    EdgeInsets.symmetric(horizontal: margin),
                                alignment: Alignment.center,
                                child: SizedBox.expand(
                                  child: ButtonTheme(
                                    child: RaisedButton(
                                      color: Colors.grey,
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    AddVerificationCode()));
                                      },
                                      child: AutoSizeText(
                                        "NEXT",
                                        style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20),
                                        minFontSize: 15,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ))
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: blockHeight * 35,
                      left: 0,
                      right: 0,
                      child: Container(
                          margin: EdgeInsets.symmetric(horizontal: margin),
                          // color: Colors.red,
                          height: blockHeight * 36,
                          padding:
                              EdgeInsets.symmetric(vertical: blockHeight * 5),
                          alignment: Alignment.topLeft,
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                  child: Container(
                                // color: Colors.blue,
                                alignment: Alignment.center,
                                child: Container(
                                  height: blockHeight * 5,
                                  decoration: BoxDecoration(
                                      // color: Colors.red,
                                      border: Border.all(
                                          color: Colors.black,
                                          width: blockWidth),
                                      borderRadius: BorderRadius.circular(20)),
                                  margin:
                                      EdgeInsets.symmetric(horizontal: margin),
                                  alignment: Alignment.center,
                                  child: SizedBox.expand(
                                    child: ButtonTheme(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: RaisedButton(
                                        color: Colors.grey,
                                        onPressed: () {},
                                        child: Text(
                                          "Connect with Facebook",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )),
                              Expanded(
                                  child: Container(
                                // color: Colors.yellow,
                                alignment: Alignment.center,
                                child: Container(
                                  height: blockHeight * 5,
                                  decoration: BoxDecoration(
                                      // color: Colors.red,
                                      border: Border.all(
                                          color: Colors.black,
                                          width: blockWidth),
                                      borderRadius: BorderRadius.circular(20)),
                                  margin:
                                      EdgeInsets.symmetric(horizontal: margin),
                                  alignment: Alignment.center,
                                  child: SizedBox.expand(
                                    child: ButtonTheme(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: RaisedButton(
                                        color: Colors.grey,
                                        onPressed: () {},
                                        child: Text(
                                          "Connect with Facebook",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )),
                              Expanded(
                                  child: Container(
                                // color: Colors.blue,
                                alignment: Alignment.center,
                                child: Container(
                                  height: blockHeight * 3,
                                  // color: Colors.red,
                                  alignment: Alignment.topCenter,
                                  child: Text(
                                    "I agree to buddieU terms of servcie & privacy policies",
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ))
                            ],
                          )),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
