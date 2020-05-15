import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stryce/sizeConfig.dart';

class MesaagesView extends StatefulWidget {
  MesaagesView({Key key}) : super(key: key);

  @override
  _MesaagesViewState createState() => _MesaagesViewState();
}

class _MesaagesViewState extends State<MesaagesView> {
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
                // color: Colors.red,
                height: blockHeight * 10,
                margin: EdgeInsets.symmetric(horizontal: margin / 2),
                alignment: Alignment.centerLeft,
                child: Container(
                  // color: Colors.green,
                  height: blockHeight * 6,
                  alignment: Alignment.topLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        // color: Colors.yellowAccent,
                        width: blockWidth * 40,
                        alignment: Alignment.topLeft,
                        child: Image.asset("assets/logo.jpg"),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            // color: Colors.grey,
                            shape: BoxShape.circle),
                        width: blockHeight * 6,
                        alignment: Alignment.center,
                        child: IconButton(
                            icon: Icon(Icons.search), onPressed: () {}),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: blockHeight * 90,
                // color: Colors.red,
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      // color: Colors.blue,
                      height: blockHeight * 10,
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.message,
                        size: blockHeight * 7,
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      // color: Colors.green,
                      height: blockHeight * 10,
                      alignment: Alignment.center,
                      child: AutoSizeText(
                        "Waiting for new connection \nSwipe more!",
                        style: GoogleFonts.montserrat(
                            fontSize: 22, color: Colors.grey),
                        textAlign: TextAlign.center,
                        minFontSize: 15,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
