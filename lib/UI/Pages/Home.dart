import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:zendesk_clone/UI/Pages/TabPages/TodayPage.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  List<Widget> pages = [
    TodayPage(),
    Container(
      color: Colors.black,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.yellow,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (val) {
          setState(() {
            currentIndex = val;
          });
        },
        items: [
          _bottomNavigationItem(Entypo.gauge, Entypo.gauge, 'Today'),
          _bottomNavigationItem(
              Icons.wifi_tethering, Icons.wifi_tethering, 'Leads'),
          _bottomNavigationItem(
              Icons.account_circle, Icons.account_circle, 'Contacts'),
          _bottomNavigationItem(MaterialCommunityIcons.coin,
              MaterialCommunityIcons.coin, 'Deals'),
          _bottomNavigationItem(Icons.search, Icons.search, 'Search'),
        ],
      ),
    );
  }

  BottomNavigationBarItem _bottomNavigationItem(
      IconData icon, IconData activeIcon, String text) {
    return BottomNavigationBarItem(
      icon: Icon(
        icon,
        size: IconTheme.of(context).size - 2,
      ),
      activeIcon: Icon(
        activeIcon,
        size: IconTheme.of(context).size + 2,
      ),
      title: Column(
        children: <Widget>[
          SizedBox(
            height: 4,
          ),
          Text(
            text,
            textAlign: TextAlign.end,
            style: TextStyle(fontSize: 13),
          ),
        ],
      ),
    );
  }
}
