import 'package:flutter/material.dart';
import 'package:music1/Screens/Setting.dart';
import 'package:music1/Screens/homePage.dart';
import 'package:music1/TopBars/appBar.dart';

class BottomNaviBar extends StatefulWidget {
  @override
  _BottomNaviBarState createState() => _BottomNaviBarState();
}

class _BottomNaviBarState extends State<BottomNaviBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    AppBarWidget(),
    Setting(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.widgets_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note_rounded),
            label: 'Songs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        backgroundColor: Color(0xFF181B2C),
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Color(0xFFD9519D),
        onTap: _onItemTapped,
      ),
    );
  }
}
