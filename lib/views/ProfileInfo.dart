import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:BuddieU/sizeConfig.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:BuddieU/views/PickAreasOfinterest.dart';

class ProfileInfo extends StatefulWidget {
  ProfileInfo({Key key}) : super(key: key);

  @override
  _ProfileInfoState createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo> {
  final format = DateFormat("dd-MM-yyyy");

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
                // color: Colors.green,
                margin: EdgeInsets.symmetric(horizontal: margin),
                height: blockHeight * 8,
                alignment: Alignment.centerLeft,
                child: TextFormField(
                  style: GoogleFonts.montserrat(fontSize: 18),
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      // suffixIcon:
                      //     Icon(Icons.phone, color: Colors.black),
                      contentPadding: EdgeInsets.only(
                        left: blockHeight * 2,
                      ),
                      labelText: "Email",
                      labelStyle: TextStyle(color: Colors.grey),
                      hintText: "Enter your email"),
                )),
            Container(
              // color: Colors.redAccent,
              height: blockHeight * 3,
            ),
            Container(
              // color: Colors.green,
              margin: EdgeInsets.symmetric(horizontal: margin),
              height: blockHeight * 13,
              alignment: Alignment.center,
              child: CheckboxGroup(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  orientation: GroupedButtonsOrientation.HORIZONTAL,
                  labels: <String>[
                    "Male",
                    "Female",
                    "Other",
                  ],
                  itemBuilder: (Checkbox cb, Text txt, int i) {
                    return Expanded(
                        child: Container(
                      // color: Colors.yellow,
                      child: Column(
                        children: <Widget>[cb, txt],
                      ),
                    ));
                  },
                  onChange: (bool isChecked, String label, int index) => print(
                      "isChecked: $isChecked   label: $label  index: $index"),
                  onSelected: (List<String> checked) {
                    if (checked.length > 1) {
                      checked.removeAt(0);
                    }
                    print("checked: ${checked.toString()}");
                  }),
            ),
            Container(
              // color: Colors.redAccent,
              height: blockHeight * 3,
            ),
            Container(
              // color: Colors.green,
              margin: EdgeInsets.symmetric(horizontal: margin),
              height: blockHeight * 8,
              alignment: Alignment.centerLeft,
              child: DateTimeField(
                style: GoogleFonts.montserrat(fontSize: 18),
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    contentPadding: EdgeInsets.only(left: blockHeight * 2),
                    labelText: "Date of birth",
                    labelStyle: TextStyle(color: Colors.grey),
                    hintText: "DD-MM-YYYY"),
                format: format,
                onShowPicker: (context, currentValue) {
                  return showDatePicker(
                      context: context,
                      firstDate: DateTime(1900),
                      initialDate: currentValue ?? DateTime.now(),
                      lastDate: DateTime(2100));
                },
              ),
            ),
            Container(
              // color: Colors.redAccent,
              height: blockHeight * 3,
            ),
            Container(
                // color: Colors.green,
                margin: EdgeInsets.symmetric(horizontal: margin),
                height: blockHeight * 8,
                alignment: Alignment.centerLeft,
                child: TextFormField(
                  style: GoogleFonts.montserrat(fontSize: 18),
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      // suffixIcon:
                      //     Icon(Icons.phone, color: Colors.black),
                      contentPadding: EdgeInsets.only(
                        left: blockHeight * 2,
                      ),
                      labelText: "Collge/School name",
                      labelStyle: TextStyle(color: Colors.grey),
                      hintText: "Collge/School name"),
                )),
            Container(
              // color: Colors.redAccent,
              height: blockHeight * 3,
            ),
            Container(
                // color: Colors.green,
                margin: EdgeInsets.symmetric(horizontal: margin),
                height: blockHeight * 8,
                alignment: Alignment.centerLeft,
                child: TextFormField(
                  style: GoogleFonts.montserrat(fontSize: 18),
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      // suffixIcon:
                      //     Icon(Icons.phone, color: Colors.black),
                      contentPadding: EdgeInsets.only(
                        left: blockHeight * 2,
                      ),
                      labelText: "Major/Class",
                      labelStyle: TextStyle(color: Colors.grey),
                      hintText: "Major/Class"),
                )),
            Container(
              // color: Colors.redAccent,
              height: blockHeight * 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PickAreasOfInterest()));
              },
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
                  child: Text(
                    "NEXT",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  )),
            ),
          ],
        ),
      ),
    ));
  }
}
