import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              // color: Colors.redAccent,
              height: blockHeight * 10,
              alignment: Alignment.center,
              child: Container(
                // color: Colors.yellow,
                height: blockHeight * 3,
                alignment: Alignment.center,
                child: AutoSizeText(
                  "Pick at least 5 areas of interest",
                  style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                  minFontSize: 15,
                ),
              ),
            ),
            Container(
              // color: Colors.grey,
              height: blockHeight * 3,
              margin: EdgeInsets.symmetric(horizontal: margin),
              alignment: Alignment.topLeft,
              child: AutoSizeText(
                "Sports",
                style: GoogleFonts.montserrat(
                    fontSize: 22,
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
              height: blockHeight * 3,
              margin: EdgeInsets.symmetric(horizontal: margin),
              alignment: Alignment.topLeft,
              child: AutoSizeText(
                "Science",
                style: GoogleFonts.montserrat(
                    fontSize: 22,
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
              height: blockHeight * 3,
              margin: EdgeInsets.symmetric(horizontal: margin),
              alignment: Alignment.topLeft,
              child: AutoSizeText(
                "Technology",
                style: GoogleFonts.montserrat(
                    fontSize: 22,
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
              height: blockHeight * 3,
              margin: EdgeInsets.symmetric(horizontal: margin),
              alignment: Alignment.topLeft,
              child: AutoSizeText(
                "Literature",
                style: GoogleFonts.montserrat(
                    fontSize: 22,
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
              height: blockHeight * 3,
              // color: Colors.red,
              alignment: Alignment.topLeft,
              child: AutoSizeText(
                "Add your own topic of interest",
                style: GoogleFonts.montserrat(
                    fontSize: 22,
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
                    labelText: "Major/Class",
                    labelStyle: TextStyle(color: Colors.grey),
                    hintText: "Major/Class"),
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
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Book Club",
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // color: Colors.green,
              height: blockHeight * 5,
              margin: EdgeInsets.symmetric(horizontal: margin),
              alignment: Alignment.topRight,
              child: Container(
                // color: Colors.yellow,
                height: blockHeight * 5,
                width: blockWidth * 34,
                alignment: Alignment.topLeft,
                child: SizedBox.expand(
                  child: ButtonTheme(
                    child: RaisedButton(
                        color: Colors.grey,
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            AutoSizeText(
                              "Finish",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                              minFontSize: 15,
                            ),
                            Icon(
                              Icons.arrow_right,
                              size: blockHeight * 5,
                              color: Colors.white,
                            )
                          ],
                        )),
                  ),
                ),
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

          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: blockHeight / 2)),
        ),
        Container(
          // color: Colors.yellow,
          margin: EdgeInsets.symmetric(horizontal: 5),
          height: blockHeight * 10,
          width: blockHeight * 10,

          decoration: BoxDecoration(
              // color: Colors.yellow,

              border: Border.all(color: Colors.grey, width: blockHeight / 2)),
        ),
        Container(
          // color: Colors.yellow,
          margin: EdgeInsets.symmetric(horizontal: 5),
          height: blockHeight * 10,
          width: blockHeight * 10,

          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: blockHeight / 2)),
        ),
        Container(
          // color: Colors.yellow,
          margin: EdgeInsets.symmetric(horizontal: 5),
          height: blockHeight * 10,
          width: blockHeight * 10,

          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: blockHeight / 2)),
        ),
        Container(
          // color: Colors.yellow,
          margin: EdgeInsets.symmetric(horizontal: 5),
          height: blockHeight * 10,
          width: blockHeight * 10,

          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: blockHeight / 2)),
        ),
        Container(
          // color: Colors.yellow,
          margin: EdgeInsets.symmetric(horizontal: 5),
          height: blockHeight * 10,
          width: blockHeight * 10,

          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: blockHeight / 2)),
        ),
      ],
    );
  }
}
