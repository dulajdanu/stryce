import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stryce/sizeConfig.dart';

class ProfileSignUp extends StatefulWidget {
  ProfileSignUp({Key key}) : super(key: key);

  @override
  _ProfileSignUpState createState() => _ProfileSignUpState();
}

class _ProfileSignUpState extends State<ProfileSignUp> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    double margin = SizeConfig.safeBlockHorizontal * 10;
    double blockHeight = SizeConfig.safeBlockVertical;
    double blockWidth = SizeConfig.safeBlockHorizontal;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              // color: Colors.blue,
              height: blockHeight * 5,
            ),
            Container(
              // color: Colors.red,
              height: blockHeight * 8,
              margin: EdgeInsets.symmetric(horizontal: margin),
              alignment: Alignment.topLeft,
              child: Image.asset("assets/logo.jpg"),
            ),
            Container(
              // color: Colors.blue,
              height: blockHeight * 2,
            ),
            Container(
              margin: EdgeInsets.only(left: margin, top: margin / 5),
              height: blockHeight * 30,
              // padding: EdgeInsets.all(blockHeight),
              // color: Colors.red,
              alignment: Alignment.centerLeft,
              child: HorizontalImagesView(blockHeight),
            ),
            Container(
              // color: Colors.blue,
              height: blockHeight * 5,
            ),
            Container(
                // color: Colors.red,
                margin: EdgeInsets.symmetric(horizontal: margin),
                height: blockHeight * 4,
                alignment: Alignment.topLeft,
                child: Row(
                  children: <Widget>[
                    AutoSizeText(
                      "Ryan George",
                      style: GoogleFonts.montserrat(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                      minFontSize: 18,
                    ),
                    SizedBox(
                      width: blockWidth * 5,
                    ),
                    Icon(FontAwesomeIcons.mars)
                  ],
                )),
            Container(
              // color: Colors.blue,
              height: blockHeight * 2,
            ),
            Container(
              // color: Colors.green,
              height: blockHeight * 3,
              margin: EdgeInsets.symmetric(horizontal: margin),
              alignment: Alignment.topLeft,
              child: Row(
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.mapMarkerAlt,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: blockWidth * 2,
                  ),
                  Text(
                    "Bangalore University",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  )
                ],
              ),
            ),
            Container(
              // color: Colors.blue,
              height: blockHeight * 2,
            ),
            Container(
              // color: Colors.blue,
              height: blockHeight * 4,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.symmetric(horizontal: margin),
              child: AutoSizeText(
                "\"I enjoy football and cricket\"",
                style: GoogleFonts.montserrat(fontSize: 16, color: Colors.grey),
                minFontSize: 14,
                maxLines: 3,
              ),
            ),
            Container(
              // color: Colors.blue,
              height: blockHeight * 2,
            ),
            Container(
                color: Colors.blue,
                height: blockHeight * 33,
                margin: EdgeInsets.symmetric(horizontal: margin),
                alignment: Alignment.topLeft,
                child: DefaultTabController(
                  length: 3,
                  child: new Scaffold(
                    backgroundColor: Colors.white,
                    appBar: new PreferredSize(
                      preferredSize: Size.fromHeight(blockHeight * 15),
                      child: new Container(
                        padding: EdgeInsets.all(0),
                        height: blockHeight * 6,
                        // color: Colors.green,
                        child: new TabBar(
                          labelPadding: EdgeInsets.all(0),
                          indicatorColor: Colors.grey,
                          tabs: [
                            Container(
                              height: blockHeight * 6,
                              // color: Colors.yellow,
                              width: blockWidth * 20,
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "55",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  AutoSizeText(
                                    "Questions",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 16),
                                    minFontSize: 12,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: blockHeight * 6,
                              width: blockWidth * 20,
                              // color: Colors.brown,
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "102",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  AutoSizeText(
                                    "Answers",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 16),
                                    minFontSize: 14,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: blockHeight * 6,
                              // color: Colors.yellow,
                              width: blockWidth * 20,
                              child: Column(
                                children: <Widget>[
                                  AutoSizeText(
                                    "Interest",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 16),
                                    minFontSize: 14,
                                  ),
                                  Text(
                                    "",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    body: new TabBarView(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: blockHeight * 2),
                          child: Column(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        width: blockHeight / 2,
                                        color: Colors.grey)),
                                padding: EdgeInsets.all(blockHeight),
                                // color: Colors.red,
                                child: Text(
                                  "What is the most spontaneous thing you've ever done",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          // color: Colors.blue,
                          margin: EdgeInsets.only(top: blockHeight * 2),
                          child: Column(
                            children: <Widget>[
                              Container(
                                  height: blockHeight * 15,
                                  // height: blockHeight,
                                  decoration: BoxDecoration(
                                      // color: Colors.yellow,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: blockHeight / 2,
                                          color: Colors.grey)),
                                  padding: EdgeInsets.all(blockHeight),
                                  alignment: Alignment.topLeft,
                                  child: Stack(
                                    children: <Widget>[
                                      // Align(
                                      //   alignment: Alignment.bottomRight,
                                      //   child: ButtonTheme(
                                      //     child: Container(
                                      //       decoration: BoxDecoration(
                                      //           border: Border.all(
                                      //               color: Colors.grey,
                                      //               width: blockHeight / 2)),
                                      //       child: RaisedButton(
                                      //         // color: Colors.red,
                                      //         color: Colors.white,

                                      //         onPressed: () {},
                                      //         child: Text("View"),
                                      //       ),
                                      //     ),
                                      //   ),
                                      // ),
                                      Container(
                                        height: blockHeight * 10,
                                        child: Column(
                                          children: <Widget>[
                                            Text(
                                              "Q. What is the impact of private CSR on the country",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.grey),
                                            ),
                                            Text(
                                              "A. The benefit of private firms  ",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ))
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: blockHeight * 2),
                          // color: Colors.red,
                          child: Wrap(
                            spacing: blockWidth,
                            runSpacing: blockHeight,
                            direction: Axis.horizontal,
                            alignment: WrapAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Colors.grey,
                                        width: blockHeight / 2)),
                                padding: EdgeInsets.all(blockWidth),
                                child: Text("Athletics"),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Colors.grey,
                                        width: blockHeight / 2)),
                                padding: EdgeInsets.all(blockWidth),
                                child: Text("Football"),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Colors.grey,
                                        width: blockHeight / 2)),
                                padding: EdgeInsets.all(blockWidth),
                                child: Text("Basketball"),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Colors.grey,
                                        width: blockHeight / 2)),
                                padding: EdgeInsets.all(blockWidth),
                                child: Text("Hockey"),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Colors.grey,
                                        width: blockHeight / 2)),
                                padding: EdgeInsets.all(blockWidth),
                                child: Text("Physics"),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Colors.grey,
                                        width: blockHeight / 2)),
                                padding: EdgeInsets.all(blockWidth),
                                child: Text("Chemistry"),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Colors.grey,
                                        width: blockHeight / 2)),
                                padding: EdgeInsets.all(blockWidth),
                                child: Text("Maths"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    ));
  }

  HorizontalImagesView(double blockHeight) {
    return ListView(
      // This next line does the trick.
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          // color: Colors.yellow,
          margin: EdgeInsets.symmetric(horizontal: 5),
          // height: blockHeight * 10,
          width: blockHeight * 30,

          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: blockHeight / 2)),
        ),
        Container(
          // color: Colors.yellow,
          margin: EdgeInsets.symmetric(horizontal: 5),
          // height: blockHeight * 10,
          width: blockHeight * 30,

          decoration: BoxDecoration(
              // color: Colors.yellow,

              border: Border.all(color: Colors.grey, width: blockHeight / 2)),
        ),
        Container(
          // color: Colors.yellow,
          margin: EdgeInsets.symmetric(horizontal: 5),
          // height: blockHeight * 10,
          width: blockHeight * 30,

          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: blockHeight / 2)),
        ),
        Container(
          // color: Colors.yellow,
          margin: EdgeInsets.symmetric(horizontal: 5),
          // height: blockHeight * 10,
          width: blockHeight * 30,

          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: blockHeight / 2)),
        ),
        Container(
          // color: Colors.yellow,
          margin: EdgeInsets.symmetric(horizontal: 5),
          // height: blockHeight * 10,
          width: blockHeight * 30,

          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: blockHeight / 2)),
        ),
        Container(
          // color: Colors.yellow,
          margin: EdgeInsets.symmetric(horizontal: 5),
          // height: blockHeight * 10,
          width: blockHeight * 30,

          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: blockHeight / 2)),
        ),
      ],
    );
  }
}
