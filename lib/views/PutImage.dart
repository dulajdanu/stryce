import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stryce/views/ProfileInfo.dart';

import '../sizeConfig.dart';

class PutYouBest extends StatefulWidget {
  PutYouBest({Key key}) : super(key: key);

  @override
  _PutYouBestState createState() => _PutYouBestState();
}

class _PutYouBestState extends State<PutYouBest> {
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
              // color: Colors.redAccent,
              height: blockHeight * 10,
            ),
            Container(
              // color: Colors.greenAccent,
              height: blockHeight * 6,
              margin: EdgeInsets.symmetric(horizontal: margin),
              alignment: Alignment.center,
              child: AutoSizeText(
                "Put your best forward",
                style: GoogleFonts.montserrat(
                    fontSize: 25, fontWeight: FontWeight.w500),
                minFontSize: 16,
              ),
            ),
            Container(
              // color: Colors.redAccent,
              height: blockHeight * 5,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: blockWidth)),
              height: blockHeight * 20,
              width: blockHeight * 20,
              margin: EdgeInsets.symmetric(horizontal: margin),
              alignment: Alignment.center,
              child: SizedBox.expand(
                child: ButtonTheme(
                  child: RaisedButton(
                    color: Colors.white,
                    onPressed: () {},
                    child: Icon(
                      Icons.add,
                      size: blockHeight * 10,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: blockHeight * 5,
              // color: Colors.greenAccent,
            ),
            Container(
              margin: EdgeInsets.only(left: margin),
              height: blockHeight * 10,
              // padding: EdgeInsets.all(blockHeight),
              // color: Colors.red,
              alignment: Alignment.centerLeft,
              child: HorizontalImagesView(blockHeight),
            ),
            Container(
              // color: Colors.redAccent,
              height: blockHeight * 5,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: margin),
              // color: Colors.greenAccent,
              height: blockHeight * 10,
              alignment: Alignment.center,
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    // enabledBorder: UnderlineInputBorder(
                    //   borderSide: BorderSide(color: Colors.red, width: 5.0),
                    // ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 3),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 3),
                    ),
                    hintText: "Name",
                    hintStyle: GoogleFonts.montserrat(
                        fontSize: 20, fontWeight: FontWeight.w500),
                    // border: UnderlineInputBorder(),
                    contentPadding: EdgeInsets.only(left: 10)),
              ),
            ),
            Container(
              // color: Colors.redAccent,
              height: blockHeight * 5,
            ),
            Container(
              color: Colors.redAccent,
              height: blockHeight * 5,
              width: blockWidth * 40,
              alignment: Alignment.center,
              child: SizedBox.expand(
                child: ButtonTheme(
                  child: RaisedButton(
                    color: Colors.grey,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfileInfo()));
                    },
                    child: AutoSizeText(
                      "NEXT >",
                      style: GoogleFonts.montserrat(
                          fontSize: 20, fontWeight: FontWeight.w500),
                      minFontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
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
