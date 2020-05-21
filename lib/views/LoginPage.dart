import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:BuddieU/views/AddVerificationCode.dart';

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
            child: Stack(
          children: <Widget>[
            Container(
              height: blockHeight * 100,
              width: blockWidth * 100,
              // color: Colors.red,
              alignment: Alignment.center,
              child: Image.asset(
                "assets/logoedit1.png",
                height: blockHeight * 100,
                width: blockWidth * 100,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: <Widget>[
                Container(
                  // color: Colors.red,
                  height: blockHeight * 10,
                ),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: margin),
                    // color: Colors.yellow,
                    height: blockHeight * 20,
                    alignment: Alignment.topCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: blockHeight * 8,
                          // color: Colors.redAccent,
                          alignment: Alignment.center,
                          child: AutoSizeText(
                            "BuddieU",
                            style: GoogleFonts.montserrat(
                                fontSize: 40,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.shade800),
                            minFontSize: 25,
                          ),
                        ),
                        Container(
                            height: blockHeight * 5,
                            // color: Colors.green,
                            child: Container(
                              // color: Colors.greenAccent,
                              alignment: Alignment.center,
                              child: Container(
                                height: blockHeight * 4,
                                // color: Colors.redAccent,
                                alignment: Alignment.center,
                                child: AutoSizeText(
                                  "Connect with fellow students",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey.shade800),
                                  minFontSize: 15,
                                ),
                              ),
                            )),
                      ],
                    )),
                Container(
                  height: blockHeight * 70,
                  child: Stack(
                    children: <Widget>[
                      // Positioned(
                      //   top: blockHeight * 15,
                      //   left: 0,
                      //   right: 0,
                      //   bottom: 0,
                      //   child: ClipPath(
                      //       clipBehavior: Clip.hardEdge,
                      //       clipper: WaveClipperTwo(reverse: true, flip: false),
                      //       child: Container(
                      //         height: blockHeight * 25,
                      //         padding: EdgeInsets.all(10.0),
                      //         decoration: BoxDecoration(
                      //           borderRadius: BorderRadius.only(
                      //               topRight: Radius.circular(0)),
                      //           color: Colors.grey,
                      //         ),
                      //       )),
                      // ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                            // border: Border.all(
                            //     color: Colors.grey, width: blockWidth)
                            ),
                        height: blockHeight * 35,
                        margin: EdgeInsets.symmetric(
                            horizontal: margin, vertical: 0),
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
                                        color: Colors.grey,
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
                                                color: Colors.grey, width: 1),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.grey, width: 1),
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
                                  child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              AddVerificationCode()));
                                },
                                child: Container(
                                  // color: Colors.green,
                                  alignment: Alignment.center,
                                  child: Container(
                                      // color: Colors.blue,

                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          gradient: LinearGradient(colors: [
                                            Color(0xffec375c),
                                            Color(0xfff46163),
                                            Color(0xfff98467)
                                          ])),
                                      height: 5 * blockHeight,
                                      margin: EdgeInsets.symmetric(
                                          horizontal: margin),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "NEXT",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500),
                                      )),
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
                                    height: blockHeight * 6,
                                    decoration: BoxDecoration(
                                        // color: Colors.red,
                                        // border: Border.all(
                                        //     color: Colors.black,
                                        //     width: blockWidth),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    margin: EdgeInsets.symmetric(
                                        horizontal: margin),
                                    alignment: Alignment.center,
                                    child: SizedBox.expand(
                                      child: ButtonTheme(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: RaisedButton(
                                          color: Colors.white,
                                          onPressed: () {},
                                          child: Text(
                                            "Connect with Facebook",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.grey),
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
                                    height: blockHeight * 6,
                                    decoration: BoxDecoration(
                                        // color: Colors.red,
                                        // border: Border.all(
                                        //     color: Colors.black,
                                        //     width: blockWidth),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    margin: EdgeInsets.symmetric(
                                        horizontal: margin),
                                    alignment: Alignment.center,
                                    child: SizedBox.expand(
                                      child: ButtonTheme(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: RaisedButton(
                                          color: Colors.white,
                                          onPressed: () {},
                                          child: Text(
                                            "Connect with Google",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.grey),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )),
                                Expanded(
                                    child: Container(
                                  // color: Colors.blue,
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    height: blockHeight * 3,
                                    // color: Colors.red,
                                    alignment: Alignment.bottomCenter,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          "I agree to BuddieU ",
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                        Text(
                                          'terms of service ',
                                          style: TextStyle(
                                              fontSize: 12,
                                              decoration:
                                                  TextDecoration.underline),
                                        ),
                                        Text(
                                          '& ',
                                          style: TextStyle(
                                            fontSize: 12,
                                            // decoration:
                                            //     TextDecoration.underline
                                          ),
                                        ),
                                        Text(
                                          'privacy policies',
                                          style: TextStyle(
                                              fontSize: 12,
                                              decoration:
                                                  TextDecoration.underline),
                                        ),
                                      ],
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
          ],
        )),
      ),
    );
  }
}
