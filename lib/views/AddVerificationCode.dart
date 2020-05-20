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
                                "BuddieU",
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
                                    fontSize: 20, fontWeight: FontWeight.w500),
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
              // color: Colors.red,
              height: blockHeight * 6,
              margin: EdgeInsets.symmetric(horizontal: margin),
              alignment: Alignment.topCenter,
              child: AutoSizeText(
                "Please enter the code we sent to your mobile number",
                style: GoogleFonts.montserrat(fontSize: 18),
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
                margin: EdgeInsets.symmetric(horizontal: margin),
                alignment: Alignment.topCenter,
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: "Enter verification code",
                      border: InputBorder.none,
                      hintStyle: TextStyle()),
                )),
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
                  margin: EdgeInsets.symmetric(horizontal: margin),
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PutYouBest()));
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
                  margin: EdgeInsets.symmetric(horizontal: margin),
                  alignment: Alignment.center,
                  child: Text(
                    "NEXT",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  )),
            ),
            Container(
              padding: EdgeInsets.only(bottom: blockHeight * 3),
              height: blockHeight * 26,
              // color: Colors.greenAccent,
              alignment: Alignment.bottomCenter,
              child: Container(
                // color: Colors.redAccent,
                height: blockHeight * 3,
                alignment: Alignment.center,
                child: Text(
                  "I agree to BuddieU terms of servcie & privacy policies",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
