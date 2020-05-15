import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stryce/sizeConfig.dart';
import 'package:stryce/views/LandingPage.dart';
import 'package:stryce/views/ProfileSignUpAbout.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    ProfileSignUp(),
    Text(
      'Index 1: Business',
      // style: optionStyle,
    ),
    LandingPage(),
    Text(
      'Index 2: School',
      // style: optionStyle,
    ),
    Text(
      'Index 2: School',
      // style: optionStyle,
    ),
    Text(
      'Index 2: School',
      // style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    double margin = SizeConfig.safeBlockHorizontal * 10;
    double blockHeight = SizeConfig.safeBlockVertical;
    double blockWidth = SizeConfig.safeBlockHorizontal;
    return SafeArea(
        child: Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        unselectedItemColor: Colors.black,
        // iconSize: 10,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.alignJustify),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.comment),
            title: Text("Inbox"),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.home),
            title: Text('School'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.bell),
            title: Text('School'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('School'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    ));
  }
}
