import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:buddieU/sizeConfig.dart';

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
