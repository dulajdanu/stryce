import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:BuddieU/sizeConfig.dart';
import 'package:BuddieU/views/ChatPage.dart';
import 'package:BuddieU/views/LandingPage.dart';
import 'package:BuddieU/views/MessagesView.dart';
import 'package:BuddieU/views/ProfileSignUpAbout.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    ProfileSignUp(),
    MesaagesView(),
    LandingPage(),
    ChatPage(),
    Text(
      'Index 2: settings',
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
      backgroundColor: Colors.grey[200],
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        unselectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(color: Colors.grey),
        // selectedLabelStyle: TextStyle(color: Colors.grey),
        // iconSize: 10,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            // activeIcon: ShaderMask(
            //   shaderCallback: (Rect bounds) {
            //     return RadialGradient(
            //       center: Alignment.topLeft,
            //       radius: 1.0,
            //       colors: <Color>[
            //         Color(0xffec375c),
            //         Color(0xfff46163),
            //         Color(0xfff98467)
            //       ],
            //       tileMode: TileMode.mirror,
            //     ).createShader(bounds);
            //   },
            //   child: Icon(Icons.notifications),
            // ),
            icon: Icon(FontAwesomeIcons.alignJustify),
            title: Text('Profile'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.comment),
            title: Text("Inbox"),
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage(
                "assets/logo2.png",
              ),
              color: null,
              fit: BoxFit.scaleDown,
              height: blockHeight * 5,
              width: blockHeight * 5,
            ),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.bell),
            title: Text('Notifications'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    ));
  }
}
