import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:stryce/sizeConfig.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.redAccent,
              height: blockHeight * 10,
            ),
            Container(
                // color: Colors.green,
                margin: EdgeInsets.symmetric(horizontal: margin),
                height: blockHeight * 6,
                alignment: Alignment.centerLeft,
                child: TextFormField(
                  style: GoogleFonts.montserrat(fontSize: 18),
                  decoration: InputDecoration(
                      // suffixIcon:
                      //     Icon(Icons.phone, color: Colors.black),
                      contentPadding: EdgeInsets.only(
                        left: blockHeight * 2,
                      ),
                      labelText: "Email",
                      hintText: "Enter your email"),
                )),
            Container(
              color: Colors.redAccent,
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
              color: Colors.redAccent,
              height: blockHeight * 3,
            ),
            Container(
              // color: Colors.green,
              margin: EdgeInsets.symmetric(horizontal: margin),
              height: blockHeight * 10,
              alignment: Alignment.centerLeft,
              child: DateTimeField(
                decoration: InputDecoration(
                    labelText: "Date of birth", hintText: "DD-MM-YYYY"),
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
          ],
        ),
      ),
    ));
  }
}
