import 'package:BuddieU/sizeConfig.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationPage extends StatefulWidget {
  NotificationPage({Key key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
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
                  height: blockHeight * 80,
                  // color: Colors.red,
                  alignment: Alignment.center,
                  child: Container(
                    // color: Colors.green,
                    height: blockHeight * 10,
                    alignment: Alignment.center,
                    child: AutoSizeText(
                      "Nothing New , YET !",
                      style: GoogleFonts.montserrat(
                          fontSize: 22, color: Colors.grey),
                      textAlign: TextAlign.center,
                      minFontSize: 15,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
