import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:BuddieU/sizeConfig.dart';

class ProfileSignUp extends StatefulWidget {
  ProfileSignUp({Key key}) : super(key: key);

  @override
  _ProfileSignUpState createState() => _ProfileSignUpState();
}

class _ProfileSignUpState extends State<ProfileSignUp> {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xffec375c), Color(0xfff46163), Color(0xfff98467)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
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
              margin: EdgeInsets.symmetric(horizontal: margin / 2),
              alignment: Alignment.centerLeft,
              child: Container(
                // color: Colors.green,
                height: blockHeight * 4,
                alignment: Alignment.topLeft,
                child: Row(
                  children: <Widget>[
                    Container(
                      // color: Colors.white,
                      width: blockHeight * 5,
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
                          style: GoogleFonts.montserrat(fontSize: 20),
                          minFontSize: 15,
                        ),
                      ),
                    ))
                  ],
                ),
              ),
            ),
            // Container(
            //   // color: Colors.blue,
            //   height: blockHeight * 2,
            // ),
            Container(
              // margin: EdgeInsets.only(left: margin, top: margin / 5),
              height: blockHeight * 45,
              // padding: EdgeInsets.all(blockHeight),
              // color: Colors.red,
              alignment: Alignment.centerLeft,
              child: HorizontalImagesView(blockHeight),
            ),
            Container(
              // color: Colors.blue,
              height: blockHeight * 1,
            ),
            Container(
                // color: Colors.red,
                margin: EdgeInsets.symmetric(horizontal: margin),
                height: blockHeight * 6,
                alignment: Alignment.topLeft,
                child: Row(
                  children: <Widget>[
                    AutoSizeText(
                      "Ryan George",
                      style: GoogleFonts.montserrat(
                          fontSize: 40,
                          fontWeight: FontWeight.w500,
                          // color: Colors.grey,
                          foreground: Paint()..shader = linearGradient),
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
              height: blockHeight * 2.5,
              margin: EdgeInsets.symmetric(horizontal: margin),
              alignment: Alignment.topLeft,
              child: Row(
                children: <Widget>[
                  Image(image: AssetImage("assets/Cap.png")),
                  SizedBox(
                    width: blockWidth * 2,
                  ),
                  AutoSizeText(
                    "Bangalore University",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                    minFontSize: 15,
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
                style: GoogleFonts.montserrat(fontSize: 20, color: Colors.grey),
                minFontSize: 14,
                maxLines: 3,
              ),
            ),
            Container(
              // color: Colors.blue,
              height: blockHeight * 2,
            ),
            Container(
                // color: Colors.blue,
                height: blockHeight * 33,
                margin: EdgeInsets.symmetric(horizontal: margin),
                alignment: Alignment.topLeft,
                child: DefaultTabController(
                  length: 3,
                  child: new Scaffold(
                    backgroundColor: Colors.grey[200],
                    appBar: new PreferredSize(
                      preferredSize: Size.fromHeight(blockHeight * 15),
                      child: new Container(
                        padding: EdgeInsets.all(0),
                        height: blockHeight * 6,
                        // color: Colors.green,
                        child: new TabBar(
                          labelPadding: EdgeInsets.all(0),
                          indicatorColor: Color(0xffec375c),
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
                                        color: Colors.grey, fontSize: 14),
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
                                        color: Colors.grey, fontSize: 14),
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
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  AutoSizeText(
                                    "Interest",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                    minFontSize: 14,
                                  ),
                                  // Text(
                                  //   "",
                                  //   style: TextStyle(color: Colors.grey),
                                  // ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    body: new TabBarView(
                      children: <Widget>[
                        SingleChildScrollView(
                          // margin: EdgeInsets.only(top: blockHeight * 2),
                          child: Column(
                            children: <Widget>[
                              Container(
                                margin:
                                    EdgeInsets.symmetric(vertical: margin / 5),

                                decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    Color(0xffec375c),
                                    Color(0xfff46163),
                                    Color(0xfff98467)
                                  ]),
                                  borderRadius: BorderRadius.circular(10),
                                  // border: Border.all(
                                  //     width: blockHeight / 2,
                                  //     color: Colors.grey)
                                ),
                                padding: EdgeInsets.all(blockHeight * 2),
                                // color: Colors.red,
                                child: Text(
                                  "What is the most spontaneous thing you've ever done",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: margin / 5),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    Color(0xffec375c),
                                    Color(0xfff46163),
                                    Color(0xfff98467)
                                  ]),
                                  borderRadius: BorderRadius.circular(10),
                                  // border: Border.all(
                                  //     width: blockHeight / 2,
                                  //     color: Colors.grey)
                                ),
                                padding: EdgeInsets.all(blockHeight * 2),
                                // color: Colors.red,
                                child: Text(
                                  "What is the most spontaneous thing you've ever done",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    Color(0xffec375c),
                                    Color(0xfff46163),
                                    Color(0xfff98467)
                                  ]),
                                  borderRadius: BorderRadius.circular(10),
                                  // border: Border.all(
                                  //     width: blockHeight / 2,
                                  //     color: Colors.grey)
                                ),
                                padding: EdgeInsets.all(blockHeight * 2),
                                // color: Colors.red,
                                child: Text(
                                  "What is the most spontaneous thing you've ever done",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
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
                                  // height: blockHeight * 15,
                                  // height: blockHeight,
                                  decoration: BoxDecoration(
                                    // color: Colors.yellow,
                                    gradient: LinearGradient(colors: [
                                      Color(0xffec375c),
                                      Color(0xfff46163),
                                      Color(0xfff98467)
                                    ]),
                                    borderRadius: BorderRadius.circular(10),
                                    // borderRadius: BorderRadius.circular(20),
                                    // border: Border.all(
                                    //     width: blockHeight / 2,
                                    //     color: Colors.grey)
                                  ),
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
                                        // height: blockHeight * 10,
                                        child: Column(
                                          children: <Widget>[
                                            Text(
                                              "Q. What is the impact of private CSR on the country",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white),
                                            ),
                                            Text(
                                              "A. The benefit of private firms  ",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white),
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
                                  gradient: LinearGradient(colors: [
                                    Color(0xffec375c),
                                    Color(0xfff46163),
                                    Color(0xfff98467)
                                  ]),
                                  borderRadius: BorderRadius.circular(10),
                                  // border: Border.all(
                                  //     color: Colors.grey,
                                  //     width: blockHeight / 2)
                                ),
                                padding: EdgeInsets.all(blockWidth * 2),
                                child: Text(
                                  "Athletics",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    Color(0xffec375c),
                                    Color(0xfff46163),
                                    Color(0xfff98467)
                                  ]),
                                  borderRadius: BorderRadius.circular(10),
                                  // border: Border.all(
                                  //     color: Colors.grey,
                                  //     width: blockHeight / 2)
                                ),
                                padding: EdgeInsets.all(blockWidth * 2),
                                child: Text(
                                  "Football",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    Color(0xffec375c),
                                    Color(0xfff46163),
                                    Color(0xfff98467)
                                  ]),
                                  borderRadius: BorderRadius.circular(10),
                                  // border: Border.all(
                                  //     color: Colors.grey,
                                  //     width: blockHeight / 2)
                                ),
                                padding: EdgeInsets.all(blockWidth * 2),
                                child: Text(
                                  "Basketball",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    Color(0xffec375c),
                                    Color(0xfff46163),
                                    Color(0xfff98467)
                                  ]),
                                  borderRadius: BorderRadius.circular(10),
                                  // border: Border.all(
                                  //     color: Colors.grey,
                                  //     width: blockHeight / 2)
                                ),
                                padding: EdgeInsets.all(blockWidth * 2),
                                child: Text(
                                  "Hockey",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    Color(0xffec375c),
                                    Color(0xfff46163),
                                    Color(0xfff98467)
                                  ]),
                                  borderRadius: BorderRadius.circular(10),
                                  // border: Border.all(
                                  //     color: Colors.grey,
                                  //     width: blockHeight / 2)
                                ),
                                padding: EdgeInsets.all(blockWidth * 2),
                                child: Text(
                                  "Physics",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    Color(0xffec375c),
                                    Color(0xfff46163),
                                    Color(0xfff98467)
                                  ]),
                                  borderRadius: BorderRadius.circular(10),
                                  // border: Border.all(
                                  //     color: Colors.grey,
                                  //     width: blockHeight / 2)
                                ),
                                padding: EdgeInsets.all(blockWidth * 2),
                                child: Text(
                                  "Chemistry",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    Color(0xffec375c),
                                    Color(0xfff46163),
                                    Color(0xfff98467)
                                  ]),
                                  borderRadius: BorderRadius.circular(10),
                                  // border: Border.all(
                                  //     color: Colors.grey,
                                  //     width: blockHeight / 2)
                                ),
                                padding: EdgeInsets.all(blockWidth * 2),
                                child: Text(
                                  "Maths",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
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
          width: blockHeight * 45,
          alignment: Alignment.center,

          decoration: BoxDecoration(
            image: DecorationImage(
                matchTextDirection: true,
                // fit: BoxFit.cover,
                alignment: Alignment.center,
                repeat: ImageRepeat.noRepeat,
                image: AssetImage(
                  "assets/virat.jpg",
                )),
            // color: Colors.yellow,
            borderRadius: BorderRadius.circular(20),
            // border: Border.all(color: Colors.grey, width: blockHeight / 2)
          ),
        ),
        Container(
          // color: Colors.yellow,
          margin: EdgeInsets.symmetric(horizontal: 5),
          // height: blockHeight * 10,

          width: blockHeight * 45,
          alignment: Alignment.center,

          decoration: BoxDecoration(
            image: DecorationImage(
                matchTextDirection: true,
                // fit: BoxFit.cover,
                alignment: Alignment.center,
                repeat: ImageRepeat.noRepeat,
                image: AssetImage(
                  "assets/virat.jpg",
                )),
            // color: Colors.yellow,
            borderRadius: BorderRadius.circular(20),
            // border: Border.all(color: Colors.grey, width: blockHeight / 2)
          ),
        ),
        Container(
          // color: Colors.yellow,
          margin: EdgeInsets.symmetric(horizontal: 5),
          // height: blockHeight * 10,
          width: blockHeight * 45,

          decoration: BoxDecoration(
            image: DecorationImage(
                matchTextDirection: true,
                // fit: BoxFit.cover,
                alignment: Alignment.center,
                repeat: ImageRepeat.noRepeat,
                image: AssetImage(
                  "assets/virat.jpg",
                )),
            // color: Colors.yellow,
            borderRadius: BorderRadius.circular(20),
            // border: Border.all(color: Colors.grey, width: blockHeight / 2)
          ),
        ),
      ],
    );
  }
}
