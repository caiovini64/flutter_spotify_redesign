import 'package:flutter/material.dart';
import 'package:spotify/pages/favorites.dart';
import 'package:spotify/pages/home.dart';
import 'package:spotify/const.dart';

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Favorites(),
    HomePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: black,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: white.withOpacity(0.4)),
            title: Text(
              'Início',
              style: TextStyle(color: white.withOpacity(0.4)),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music, color: white.withOpacity(0.4)),
            title: Text(
              'Biblioteca',
              style: TextStyle(color: white.withOpacity(0.4)),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business, color: white.withOpacity(0.4)),
            title: Text(
              'Premium',
              style: TextStyle(color: white.withOpacity(0.4)),
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
