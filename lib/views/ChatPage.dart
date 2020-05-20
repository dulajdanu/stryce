import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:BuddieU/sizeConfig.dart';

class ChatPage extends StatefulWidget {
  ChatPage({Key key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
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
                  height: blockHeight * 6,
                  alignment: Alignment.topLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        // color: Colors.yellowAccent,
                        // width: blockWidth * 40,
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: <Widget>[
                            Container(
                              // color: Colors.green,
                              width: blockWidth * 10,
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.grey,
                              ),
                            ),
                            Container(
                              // margin: EdgeInsets.only(left: blockWidth * 5),
                              width: blockWidth * 10,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.grey, width: blockWidth)),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: blockWidth * 2),
                              // color: Colors.black,
                              // width: blockWidth * 10,
                              alignment: Alignment.center,
                              child: Container(
                                // color: Colors.red,
                                height: blockHeight * 4,
                                alignment: Alignment.center,
                                child: AutoSizeText(
                                  "Krishna , Bangalore University",
                                  style: TextStyle(color: Colors.grey),
                                  maxLines: 2,
                                  minFontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            // color: Colors.grey,
                            shape: BoxShape.circle),
                        width: blockHeight * 6,
                        alignment: Alignment.center,
                        child: IconButton(
                            icon: Icon(
                              Icons.more_vert,
                              color: Colors.grey,
                            ),
                            onPressed: () {}),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                // color: Colors.red,
                height: blockHeight * 2,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: margin / 2),
                  height: blockHeight * 10,
                  width: blockWidth * 60,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: blockWidth),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              Container(
                // color: Colors.red,
                height: blockHeight * 2,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: margin / 2),
                  height: blockHeight * 10,
                  width: blockWidth * 60,
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Colors.black, width: blockWidth),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              Container(
                // color: Colors.red,
                height: blockHeight * 2,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: margin / 2),
                  height: blockHeight * 10,
                  width: blockWidth * 60,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: blockWidth),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              Container(
                // color: Colors.red,
                height: blockHeight * 2,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: margin / 2),
                  height: blockHeight * 10,
                  width: blockWidth * 60,
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Colors.black, width: blockWidth),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              Container(
                // color: Colors.red,
                height: blockHeight * 2,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: margin / 2),
                  height: blockHeight * 10,
                  width: blockWidth * 60,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: blockWidth),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              Container(
                // color: Colors.red,
                height: blockHeight * 2,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: margin / 2),
                  height: blockHeight * 10,
                  width: blockWidth * 60,
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Colors.black, width: blockWidth),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              Container(
                // color: Colors.red,
                height: blockHeight * 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
