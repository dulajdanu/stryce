import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:BuddieU/views/Home.dart';
import 'package:BuddieU/views/ProfileSignUpAbout.dart';

import '../sizeConfig.dart';

class PickAreasOfInterest extends StatefulWidget {
  PickAreasOfInterest({Key key}) : super(key: key);

  @override
  _PickAreasOfInterestState createState() => _PickAreasOfInterestState();
}

class _PickAreasOfInterestState extends State<PickAreasOfInterest> {
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
            Container(
              // color: Colors.redAccent,
              height: blockHeight * 10,
              alignment: Alignment.center,
              child: Container(
                // color: Colors.yellow,
                height: blockHeight * 5,
                alignment: Alignment.center,
                child: AutoSizeText(
                  "Pick at least 5 areas of interest",
                  style: GoogleFonts.montserrat(
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                  minFontSize: 15,
                ),
              ),
            ),
            Container(
              // color: Colors.grey,
              height: blockHeight * 5,
              margin: EdgeInsets.symmetric(horizontal: margin),
              alignment: Alignment.topLeft,
              child: AutoSizeText(
                "Sports",
                style: GoogleFonts.montserrat(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: margin, top: margin / 5),
              height: blockHeight * 10,
              // padding: EdgeInsets.all(blockHeight),
              // color: Colors.red,
              alignment: Alignment.centerLeft,
              child: HorizontalImagesView(blockHeight),
            ),
            Container(
              height: blockHeight * 3,
              // color: Colors.red,
            ),
            Container(
              // color: Colors.grey,
              height: blockHeight * 5,
              margin: EdgeInsets.symmetric(horizontal: margin),
              alignment: Alignment.topLeft,
              child: AutoSizeText(
                "Science",
                style: GoogleFonts.montserrat(
                    fontSize: 300,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: margin, top: margin / 5),
              height: blockHeight * 10,
              // padding: EdgeInsets.all(blockHeight),
              // color: Colors.red,
              alignment: Alignment.centerLeft,
              child: HorizontalImagesView(blockHeight),
            ),
            Container(
              height: blockHeight * 3,
              // color: Colors.red,
            ),
            Container(
              // color: Colors.grey,
              height: blockHeight * 5,
              margin: EdgeInsets.symmetric(horizontal: margin),
              alignment: Alignment.topLeft,
              child: AutoSizeText(
                "Technology",
                style: GoogleFonts.montserrat(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: margin, top: margin / 5),
              height: blockHeight * 10,
              // padding: EdgeInsets.all(blockHeight),
              // color: Colors.red,
              alignment: Alignment.centerLeft,
              child: HorizontalImagesView(blockHeight),
            ),
            Container(
              height: blockHeight * 3,
              // color: Colors.red,
            ),
            Container(
              // color: Colors.grey,
              height: blockHeight * 5,
              margin: EdgeInsets.symmetric(horizontal: margin),
              alignment: Alignment.topLeft,
              child: AutoSizeText(
                "Literature",
                style: GoogleFonts.montserrat(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: margin, top: margin / 5),
              height: blockHeight * 10,
              // padding: EdgeInsets.all(blockHeight),
              // color: Colors.red,
              alignment: Alignment.centerLeft,
              child: HorizontalImagesView(blockHeight),
            ),
            Container(
              height: blockHeight * 3,
              // color: Colors.red,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: margin),
              height: blockHeight * 5,
              // color: Colors.red,
              alignment: Alignment.topLeft,
              child: AutoSizeText(
                "Add your own topic of interest",
                style: GoogleFonts.montserrat(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
            ),
            Container(
              // color: Colors.red,
              height: blockHeight * 3,
            ),
            Container(
              // color: Colors.red,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: blockWidth),
                  borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.symmetric(horizontal: margin),
              height: blockHeight * 8,
              alignment: Alignment.center,
              padding: EdgeInsets.all(2),
              child: TextFormField(
                style: GoogleFonts.montserrat(fontSize: 18),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    // enabledBorder: UnderlineInputBorder(
                    //   borderSide: BorderSide(color: Colors.grey),
                    // ),
                    // focusedBorder: UnderlineInputBorder(
                    //   borderSide: BorderSide(color: Colors.grey),
                    // ),
                    // suffixIcon:
                    //     Icon(Icons.phone, color: Colors.black),
                    contentPadding: EdgeInsets.only(
                      left: blockHeight * 2,
                    ),
                    labelText: "Type in topic you like",
                    labelStyle: TextStyle(color: Colors.grey),
                    hintText: "Type in topic you like",
                    suffixIcon: Icon(
                      Icons.add,
                      color: Colors.grey,
                      size: 40,
                    )),
              ),
            ),
            Container(
              height: blockHeight * 3,
              // color: Colors.grey,
            ),
            Container(
              height: blockHeight * 10,
              // color: Colors.red,
              margin: EdgeInsets.symmetric(horizontal: margin),
              alignment: Alignment.topLeft,
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Mechatronics",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Book Club",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Align(
                alignment: Alignment.topRight,
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "FINISH",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                          color: Colors.white,
                        )
                      ],
                    )),
              ),
            ),
            Container(
              // color: Colors.green,
              height: blockHeight * 10,
            )
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
          height: blockHeight * 10,
          width: blockHeight * 10,
          alignment: Alignment.center,
          // child: Image.asset(
          //   "assets/virat.jpg",
          //   height: blockHeight * 9,
          //   width: blockHeight * 9,
          //   fit: BoxFit.contain,
          // ),

          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey,
              image: DecorationImage(image: AssetImage("assets/virat.jpg"))
              // border: Border.all(color: Colors.grey, width: blockHeight / 2)
              ),
        ),
        Container(
          // color: Colors.yellow,
          margin: EdgeInsets.symmetric(horizontal: 5),
          height: blockHeight * 10,
          width: blockHeight * 10,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: AssetImage("assets/virat.jpg")),

            // color: Colors.yellow,
            color: Colors.grey,
            // border: Border.all(color: Colors.grey, width: blockHeight / 2)
          ),
        ),
        Container(
          // color: Colors.yellow,
          margin: EdgeInsets.symmetric(horizontal: 5),
          height: blockHeight * 10,
          width: blockHeight * 10,

          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey,
              border: Border.all(color: Colors.grey, width: blockHeight / 2)),
        ),
        Container(
          // color: Colors.yellow,
          margin: EdgeInsets.symmetric(horizontal: 5),
          height: blockHeight * 10,
          width: blockHeight * 10,

          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey,
              border: Border.all(color: Colors.grey, width: blockHeight / 2)),
        ),
        Container(
          // color: Colors.yellow,
          margin: EdgeInsets.symmetric(horizontal: 5),
          height: blockHeight * 10,
          width: blockHeight * 10,

          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey,
              border: Border.all(color: Colors.grey, width: blockHeight / 2)),
        ),
        Container(
          // color: Colors.yellow,
          margin: EdgeInsets.symmetric(horizontal: 5),
          height: blockHeight * 10,
          width: blockHeight * 10,

          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey,
              border: Border.all(color: Colors.grey, width: blockHeight / 2)),
        ),
      ],
    );
  }
}
