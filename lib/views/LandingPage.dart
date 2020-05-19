import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:buddieU/sizeConfig.dart';
import 'dart:math' as math; // import this

class LandingPage extends StatefulWidget {
  LandingPage({Key key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    double margin = SizeConfig.safeBlockHorizontal * 5;
    double blockHeight = SizeConfig.safeBlockVertical;
    double blockWidth = SizeConfig.safeBlockHorizontal;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {},
          child: Icon(
            Icons.add,
            color: Color(0xffec375c),
          ),
        ),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        // color: Colors.yellowAccent,
                        width: blockWidth * 40,
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: blockWidth * 10,
                              // color: Colors.red,
                              alignment: Alignment.center,
                              child: Image.asset("assets/logo2.png"),
                            ),
                            Container(
                              width: blockWidth * 30,
                              // color: Colors.blue,
                              alignment: Alignment.centerLeft,
                              child: AutoSizeText(
                                "buddieU",
                                style: GoogleFonts.montserrat(fontSize: 20),
                                minFontSize: 15,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey, shape: BoxShape.circle),
                        width: blockHeight * 6,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                // color: Colors.greenAccent,
                height: blockHeight * 10,
                margin: EdgeInsets.symmetric(horizontal: margin / 2),
                alignment: Alignment.topLeft,
                child: HorizontalImagesView(blockHeight),
              ),
              Container(
                // color: Colors.red,
                height: blockHeight * 5,
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: margin / 2),
                child: Container(
                  // color: Colors.red,
                  padding: EdgeInsets.all(blockHeight),
                  margin: EdgeInsets.symmetric(horizontal: margin / 2),
                  // decoration: BoxDecoration(
                  //     border:
                  //         Border.all(width: blockHeight / 2, color: Colors.grey)),
                  child: Column(
                    children: <Widget>[
                      Container(
                        // color: Colors.red,
                        height: blockHeight * 3,
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: <Widget>[
                            Container(
                                // color: Colors.yellowAccent,
                                width: blockHeight * 3,
                                alignment: Alignment.center,
                                child: Transform(
                                  alignment: Alignment.center,
                                  transform: Matrix4.rotationY(math.pi),
                                  child: ImageIcon(
                                    AssetImage(
                                      "assets/icont.png",
                                    ),
                                    color: Colors.red,
                                  ),
                                )),
                            Container(
                              // color: Colors.greenAccent,
                              width: blockHeight * 10,
                              alignment: Alignment.centerLeft,
                              child: AutoSizeText(
                                "Tags",
                                style: TextStyle(fontSize: 16),
                                minFontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(blockHeight),
                        // color: Colors.blueAccent,
                        height: blockHeight * 10,
                        alignment: Alignment.topLeft,
                        child: AutoSizeText(
                          "Why is the distance measured in the spped of light in space?",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          minFontSize: 15,
                        ),
                      ),
                      Container(
                        // color: Colors.red,
                        height: blockHeight * 8,
                        alignment: Alignment.centerLeft,
                        child: Container(
                          // color: Colors.blue,
                          // height: blockHeight * 5,
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      alignment: Alignment.center,
                                      matchTextDirection: true,
                                      repeat: ImageRepeat.noRepeat,
                                      image: AssetImage("assets/virat.jpg"),
                                    ),
                                    color: Colors.grey,
                                    shape: BoxShape.circle),
                                width: blockHeight * 5,
                                height: blockHeight * 5,
                              ),
                              Expanded(
                                  // flex: 2,
                                  child: Container(
                                // color: Colors.yellowAccent,
                                margin: EdgeInsets.only(left: blockHeight),
                                alignment: Alignment.centerLeft,
                                child: AutoSizeText(
                                  "Nreekay,Phd-Ruckers University",
                                  // style: TextStyle(fontSize: 10),
                                  style: TextStyle(fontSize: 8),
                                ),
                              )),
                              Expanded(
                                  child: Container(
                                // color: Colors.green,
                                alignment: Alignment.center,
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                        child: Container(
                                      // color: Colors.red,
                                      alignment: Alignment.center,
                                      child: Column(
                                        children: <Widget>[
                                          Expanded(
                                            child: Icon(
                                              Icons.arrow_upward,
                                              size: blockHeight * 2,
                                            ),
                                          ),
                                          Expanded(
                                              child: AutoSizeText(
                                            "117",
                                            style: TextStyle(fontSize: 12),
                                          ))
                                        ],
                                      ),
                                    )),
                                    Expanded(
                                        child: Container(
                                      // color: Colors.yellowAccent,
                                      alignment: Alignment.center,
                                      child: Column(
                                        children: <Widget>[
                                          Expanded(
                                            child: Icon(
                                              Icons.message,
                                              size: blockHeight * 2,
                                            ),
                                          ),
                                          Expanded(
                                              child: AutoSizeText(
                                            "10",
                                            style: TextStyle(fontSize: 12),
                                          ))
                                        ],
                                      ),
                                    )),
                                    Expanded(
                                        child: Container(
                                      // color: Colors.red,
                                      alignment: Alignment.center,
                                      child: Column(
                                        children: <Widget>[
                                          Expanded(
                                            child: Icon(
                                              Icons.share,
                                              size: blockHeight * 2,
                                            ),
                                          ),
                                          Expanded(
                                              child: AutoSizeText(
                                            "218",
                                            style: TextStyle(fontSize: 12),
                                          ))
                                        ],
                                      ),
                                    ))
                                  ],
                                ),
                              )),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                // color: Colors.red,
                height: blockHeight * 2,
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: margin / 2),
                child: Container(
                  // color: Colors.red,
                  padding: EdgeInsets.all(blockHeight),
                  margin: EdgeInsets.symmetric(horizontal: margin / 2),
                  // decoration: BoxDecoration(
                  //     border:
                  //         Border.all(width: blockHeight / 2, color: Colors.grey)),
                  child: Column(
                    children: <Widget>[
                      Container(
                        // color: Colors.red,
                        height: blockHeight * 3,
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: <Widget>[
                            Container(
                                // color: Colors.yellowAccent,
                                width: blockHeight * 3,
                                alignment: Alignment.center,
                                child: Transform(
                                  alignment: Alignment.center,
                                  transform: Matrix4.rotationY(math.pi),
                                  child: ImageIcon(
                                    AssetImage(
                                      "assets/icont.png",
                                    ),
                                    color: Colors.red,
                                  ),
                                )),
                            Container(
                              // color: Colors.greenAccent,
                              width: blockHeight * 10,
                              alignment: Alignment.centerLeft,
                              child: AutoSizeText(
                                "Tags",
                                style: TextStyle(fontSize: 16),
                                minFontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(blockHeight),
                        // color: Colors.blueAccent,
                        height: blockHeight * 10,
                        alignment: Alignment.topLeft,
                        child: AutoSizeText(
                          "Why is the distance measured in the spped of light in space?",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          minFontSize: 15,
                        ),
                      ),
                      Container(
                        // color: Colors.red,
                        height: blockHeight * 8,
                        alignment: Alignment.centerLeft,
                        child: Container(
                          // color: Colors.blue,
                          // height: blockHeight * 5,
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      alignment: Alignment.center,
                                      matchTextDirection: true,
                                      repeat: ImageRepeat.noRepeat,
                                      image: AssetImage("assets/virat.jpg"),
                                    ),
                                    color: Colors.grey,
                                    shape: BoxShape.circle),
                                width: blockHeight * 5,
                                height: blockHeight * 5,
                              ),
                              Expanded(
                                  // flex: 2,
                                  child: Container(
                                // color: Colors.yellowAccent,
                                margin: EdgeInsets.only(left: blockHeight),
                                alignment: Alignment.centerLeft,
                                child: AutoSizeText(
                                  "Nreekay,Phd-Ruckers University",
                                  // style: TextStyle(fontSize: 10),
                                  style: TextStyle(fontSize: 8),
                                ),
                              )),
                              Expanded(
                                  child: Container(
                                // color: Colors.green,
                                alignment: Alignment.center,
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                        child: Container(
                                      // color: Colors.red,
                                      alignment: Alignment.center,
                                      child: Column(
                                        children: <Widget>[
                                          Expanded(
                                            child: Icon(
                                              Icons.arrow_upward,
                                              size: blockHeight * 2,
                                            ),
                                          ),
                                          Expanded(
                                              child: AutoSizeText(
                                            "117",
                                            style: TextStyle(fontSize: 12),
                                          ))
                                        ],
                                      ),
                                    )),
                                    Expanded(
                                        child: Container(
                                      // color: Colors.yellowAccent,
                                      alignment: Alignment.center,
                                      child: Column(
                                        children: <Widget>[
                                          Expanded(
                                            child: Icon(
                                              Icons.message,
                                              size: blockHeight * 2,
                                            ),
                                          ),
                                          Expanded(
                                              child: AutoSizeText(
                                            "10",
                                            style: TextStyle(fontSize: 12),
                                          ))
                                        ],
                                      ),
                                    )),
                                    Expanded(
                                        child: Container(
                                      // color: Colors.red,
                                      alignment: Alignment.center,
                                      child: Column(
                                        children: <Widget>[
                                          Expanded(
                                            child: Icon(
                                              Icons.share,
                                              size: blockHeight * 2,
                                            ),
                                          ),
                                          Expanded(
                                              child: AutoSizeText(
                                            "218",
                                            style: TextStyle(fontSize: 12),
                                          ))
                                        ],
                                      ),
                                    ))
                                  ],
                                ),
                              )),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                // color: Colors.red,
                height: blockHeight * 2,
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: margin / 2),
                child: Container(
                  // color: Colors.red,
                  padding: EdgeInsets.all(blockHeight),
                  margin: EdgeInsets.symmetric(horizontal: margin / 2),
                  // decoration: BoxDecoration(
                  //     border:
                  //         Border.all(width: blockHeight / 2, color: Colors.grey)),
                  child: Column(
                    children: <Widget>[
                      Container(
                        // color: Colors.red,
                        // height: blockHeight * 3,
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: <Widget>[
                            Container(
                                // color: Colors.yellowAccent,
                                width: blockHeight * 3,
                                alignment: Alignment.center,
                                child: Transform(
                                  alignment: Alignment.center,
                                  transform: Matrix4.rotationY(math.pi),
                                  child: ImageIcon(
                                    AssetImage(
                                      "assets/icont.png",
                                    ),
                                    color: Colors.red,
                                  ),
                                )),
                            Container(
                              // color: Colors.greenAccent,
                              width: blockHeight * 10,
                              alignment: Alignment.centerLeft,
                              child: AutoSizeText(
                                "Tags",
                                style: TextStyle(fontSize: 16),
                                minFontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(blockHeight),
                        // color: Colors.blueAccent,
                        height: blockHeight * 10,
                        alignment: Alignment.topLeft,
                        child: AutoSizeText(
                          "Why is the distance measured in the spped of light in space?",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          minFontSize: 15,
                        ),
                      ),
                      Container(
                        // color: Colors.red,
                        height: blockHeight * 8,
                        alignment: Alignment.centerLeft,
                        child: Container(
                          // color: Colors.blue,
                          // height: blockHeight * 5,
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      alignment: Alignment.center,
                                      matchTextDirection: true,
                                      repeat: ImageRepeat.noRepeat,
                                      image: AssetImage("assets/virat.jpg"),
                                    ),
                                    color: Colors.grey,
                                    shape: BoxShape.circle),
                                width: blockHeight * 5,
                                height: blockHeight * 5,
                              ),
                              Expanded(
                                  // flex: 2,
                                  child: Container(
                                // color: Colors.yellowAccent,
                                margin: EdgeInsets.only(left: blockHeight),
                                alignment: Alignment.centerLeft,
                                child: AutoSizeText(
                                  "Nreekay,Phd-Ruckers University",
                                  // style: TextStyle(fontSize: 10),
                                  style: TextStyle(fontSize: 8),
                                ),
                              )),
                              Expanded(
                                  child: Container(
                                // color: Colors.green,
                                alignment: Alignment.center,
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                        child: Container(
                                      // color: Colors.red,
                                      alignment: Alignment.center,
                                      child: Column(
                                        children: <Widget>[
                                          Expanded(
                                            child: Icon(
                                              Icons.arrow_upward,
                                              size: blockHeight * 2,
                                            ),
                                          ),
                                          Expanded(
                                              child: AutoSizeText(
                                            "117",
                                            style: TextStyle(fontSize: 12),
                                          ))
                                        ],
                                      ),
                                    )),
                                    Expanded(
                                        child: Container(
                                      // color: Colors.yellowAccent,
                                      alignment: Alignment.center,
                                      child: Column(
                                        children: <Widget>[
                                          Expanded(
                                            child: Icon(
                                              Icons.message,
                                              size: blockHeight * 2,
                                            ),
                                          ),
                                          Expanded(
                                              child: AutoSizeText(
                                            "10",
                                            style: TextStyle(fontSize: 12),
                                          ))
                                        ],
                                      ),
                                    )),
                                    Expanded(
                                        child: Container(
                                      // color: Colors.red,
                                      alignment: Alignment.center,
                                      child: Column(
                                        children: <Widget>[
                                          Expanded(
                                            child: Icon(
                                              Icons.share,
                                              size: blockHeight * 2,
                                            ),
                                          ),
                                          Expanded(
                                              child: AutoSizeText(
                                            "218",
                                            style: TextStyle(fontSize: 12),
                                          ))
                                        ],
                                      ),
                                    ))
                                  ],
                                ),
                              )),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                // color: Colors.red,
                height: blockHeight * 2,
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: margin / 2),
                child: Container(
                  // color: Colors.red,
                  padding: EdgeInsets.all(blockHeight),
                  margin: EdgeInsets.symmetric(horizontal: margin / 2),
                  // decoration: BoxDecoration(
                  //     border:
                  //         Border.all(width: blockHeight / 2, color: Colors.grey)),
                  child: Column(
                    children: <Widget>[
                      Container(
                        // color: Colors.red,
                        height: blockHeight * 3,
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: <Widget>[
                            Container(
                                // color: Colors.yellowAccent,
                                width: blockHeight * 3,
                                alignment: Alignment.center,
                                child: Transform(
                                  alignment: Alignment.center,
                                  transform: Matrix4.rotationY(math.pi),
                                  child: ImageIcon(
                                    AssetImage(
                                      "assets/icont.png",
                                    ),
                                    color: Colors.red,
                                  ),
                                )),
                            Container(
                              // color: Colors.greenAccent,
                              width: blockHeight * 10,
                              alignment: Alignment.centerLeft,
                              child: AutoSizeText(
                                "Tags",
                                style: TextStyle(fontSize: 16),
                                minFontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(blockHeight),
                        // color: Colors.blueAccent,
                        height: blockHeight * 10,
                        alignment: Alignment.topLeft,
                        child: AutoSizeText(
                          "Why is the distance measured in the spped of light in space?",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          minFontSize: 15,
                        ),
                      ),
                      Container(
                        // color: Colors.red,
                        height: blockHeight * 8,
                        alignment: Alignment.centerLeft,
                        child: Container(
                          // color: Colors.blue,
                          // height: blockHeight * 5,
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      alignment: Alignment.center,
                                      matchTextDirection: true,
                                      repeat: ImageRepeat.noRepeat,
                                      image: AssetImage("assets/virat.jpg"),
                                    ),
                                    color: Colors.grey,
                                    shape: BoxShape.circle),
                                width: blockHeight * 5,
                                height: blockHeight * 5,
                              ),
                              Expanded(
                                  // flex: 2,
                                  child: Container(
                                // color: Colors.yellowAccent,
                                margin: EdgeInsets.only(left: blockHeight),
                                alignment: Alignment.centerLeft,
                                child: AutoSizeText(
                                  "Nreekay,Phd-Ruckers University",
                                  // style: TextStyle(fontSize: 10),
                                  style: TextStyle(fontSize: 8),
                                ),
                              )),
                              Expanded(
                                  child: Container(
                                // color: Colors.green,
                                alignment: Alignment.center,
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                        child: Container(
                                      // color: Colors.red,
                                      alignment: Alignment.center,
                                      child: Column(
                                        children: <Widget>[
                                          Expanded(
                                            child: Icon(
                                              Icons.arrow_upward,
                                              size: blockHeight * 2,
                                            ),
                                          ),
                                          Expanded(
                                              child: AutoSizeText(
                                            "117",
                                            style: TextStyle(fontSize: 12),
                                          ))
                                        ],
                                      ),
                                    )),
                                    Expanded(
                                        child: Container(
                                      // color: Colors.yellowAccent,
                                      alignment: Alignment.center,
                                      child: Column(
                                        children: <Widget>[
                                          Expanded(
                                            child: Icon(
                                              Icons.message,
                                              size: blockHeight * 2,
                                            ),
                                          ),
                                          Expanded(
                                              child: AutoSizeText(
                                            "10",
                                            style: TextStyle(fontSize: 12),
                                          ))
                                        ],
                                      ),
                                    )),
                                    Expanded(
                                        child: Container(
                                      // color: Colors.red,
                                      alignment: Alignment.center,
                                      child: Column(
                                        children: <Widget>[
                                          Expanded(
                                            child: Icon(
                                              Icons.share,
                                              size: blockHeight * 2,
                                            ),
                                          ),
                                          Expanded(
                                              child: AutoSizeText(
                                            "218",
                                            style: TextStyle(fontSize: 12),
                                          ))
                                        ],
                                      ),
                                    ))
                                  ],
                                ),
                              )),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
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
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                alignment: Alignment.center,
                matchTextDirection: true,
                repeat: ImageRepeat.noRepeat,
                image: AssetImage("assets/virat.jpg"),
              )),
          alignment: Alignment.center,
          // child: Image.asset("assets/vir.jpg"),
        ),
        Container(
          // color: Colors.yellow,
          margin: EdgeInsets.symmetric(horizontal: 5),
          height: blockHeight * 10,
          width: blockHeight * 10,
          alignment: Alignment.center,
          // child: Image.asset("assets/virat.jpg"),

          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                alignment: Alignment.center,
                matchTextDirection: true,
                repeat: ImageRepeat.noRepeat,
                image: AssetImage("assets/virat.jpg"),
              )),
        ),
        Container(
          // color: Colors.yellow,
          margin: EdgeInsets.symmetric(horizontal: 5),
          height: blockHeight * 10,
          width: blockHeight * 10,
          alignment: Alignment.center,
          // child: Image.asset("assets/virat.jpeg"),

          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                alignment: Alignment.center,
                matchTextDirection: true,
                repeat: ImageRepeat.noRepeat,
                image: AssetImage("assets/virat.jpg"),
              )),
        ),
        Container(
          // color: Colors.yellow,
          margin: EdgeInsets.symmetric(horizontal: 5),
          height: blockHeight * 10,
          width: blockHeight * 10,
          alignment: Alignment.center,
          // child: Image.asset("assets/vir.jpg"),

          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                alignment: Alignment.center,
                matchTextDirection: true,
                repeat: ImageRepeat.noRepeat,
                image: AssetImage("assets/virat.jpg"),
              )),
        ),
        Container(
          // color: Colors.yellow,
          margin: EdgeInsets.symmetric(horizontal: 5),
          height: blockHeight * 10,
          width: blockHeight * 10,
          alignment: Alignment.center,
          // child: Image.asset("assets/virat.jpg"),

          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                alignment: Alignment.center,
                matchTextDirection: true,
                repeat: ImageRepeat.noRepeat,
                image: AssetImage("assets/virat.jpg"),
              )),
        ),
        Container(
          // color: Colors.yellow,
          margin: EdgeInsets.symmetric(horizontal: 5),
          height: blockHeight * 10,
          width: blockHeight * 10,

          decoration: BoxDecoration(
              // border: Border.all(color: Colors.grey, width: blockHeight / 2)
              color: Colors.grey),
        ),
      ],
    );
  }
}
