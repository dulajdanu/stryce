import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:BuddieU/views/PutImage.dart';

import '../sizeConfig.dart';

class AddVerificationCode extends StatefulWidget {
  AddVerificationCode({Key key}) : super(key: key);

  @override
  _AddVerificationCodeState createState() => _AddVerificationCodeState();
}

class _AddVerificationCodeState extends State<AddVerificationCode> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    double margin = SizeConfig.safeBlockHorizontal * 10;
    double blockHeight = SizeConfig.safeBlockVertical;
    double blockWidth = SizeConfig.safeBlockHorizontal;
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.grey[200],
            body: Stack(
              children: <Widget>[
                Container(
                  height: blockHeight * 100,
                  width: blockWidth * 100,
                  // color: Colors.red,
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/logoedit2.png",
                    height: blockHeight * 100,
                    width: blockWidth * 100,
                    fit: BoxFit.cover,
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Container(
                        // color: Colors.red,
                        height: blockHeight * 10,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: margin / 2),
                        // color: Colors.yellow,
                        height: blockHeight * 20,
                        alignment: Alignment.center,
                        child: Container(
                            height: blockHeight * 10,
                            // color: Colors.green,
                            child: Container(
                              // color: Colors.greenAccent,
                              alignment: Alignment.topCenter,
                              child: Container(
                                height: blockHeight * 5,
                                // color: Colors.redAccent,
                                alignment: Alignment.topLeft,
                                child: AutoSizeText(
                                  "Connect with fellow students",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey.shade800),
                                  minFontSize: 15,
                                ),
                              ),
                            )),
                      ),
                      Card(
                        margin: EdgeInsets.symmetric(horizontal: margin / 2),
                        child: Container(
                          padding: EdgeInsets.all(margin / 2),
                          child: Column(
                            children: <Widget>[
                              Container(
                                // color: Colors.red,
                                height: blockHeight * 6,
                                // margin: EdgeInsets.symmetric(horizontal: margin),
                                alignment: Alignment.topCenter,
                                child: AutoSizeText(
                                  "Please enter the code received",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      color: Colors.grey.shade800),
                                  minFontSize: 15,
                                ),
                              ),
                              Container(
                                // color: Colors.grey,
                                height: blockHeight * 5,
                              ),
                              Container(
                                  // color: Colors.red,
                                  height: blockHeight * 6,
                                  margin: EdgeInsets.symmetric(
                                      horizontal: margin * 2),
                                  alignment: Alignment.topCenter,
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black, width: 2),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black, width: 2),
                                      ),
                                      hintText: "Enter the code",
                                      hintStyle: TextStyle(),
                                    ),
                                  )),
                              // Container(
                              //   color: Colors.blue,
                              //   height: blockHeight * 1,
                              //   width: blockWidth * 40,
                              // ),
                              Container(
                                // color: Colors.grey,
                                height: blockHeight * 2,
                              ),
                              Container(
                                // color: Colors.redAccent,
                                height: blockHeight * 3,
                                alignment: Alignment.topCenter,
                                child: AutoSizeText(
                                  "00:00",
                                  style: GoogleFonts.montserrat(fontSize: 20),
                                  minFontSize: 15,
                                ),
                              ),
                              Container(
                                // color: Colors.grey,
                                height: blockHeight * 2,
                              ),
                              GestureDetector(
                                onTap: () {
                                  // Navigator.push(context,
                                  // MaterialPageRoute(builder: (context) => ProfileInfo()));
                                },
                                child: Container(
                                    // color: Colors.blue,

                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        gradient: LinearGradient(colors: [
                                          Color(0xffec375c),
                                          Color(0xfff46163),
                                          Color(0xfff98467)
                                        ])),
                                    height: 5 * blockHeight,
                                    width: blockWidth * 40,
                                    margin: EdgeInsets.symmetric(
                                        horizontal: margin),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "RESEND",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    )),
                              ),
                              Container(
                                // color: Colors.grey,
                                height: blockHeight * 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => PutYouBest()));
                                },
                                child: Container(
                                    // color: Colors.blue,

                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        gradient: LinearGradient(colors: [
                                          Color(0xffec375c),
                                          Color(0xfff46163),
                                          Color(0xfff98467)
                                        ])),
                                    height: 5 * blockHeight,
                                    width: blockWidth * 40,
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
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: blockHeight * 3),
                        height: blockHeight * 15,
                        // color: Colors.greenAccent,
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          // color: Colors.redAccent,
                          height: blockHeight * 3,
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
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
                                    decoration: TextDecoration.underline),
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
                                    decoration: TextDecoration.underline),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )));
  }
}
