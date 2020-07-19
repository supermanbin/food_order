import 'package:flutter/material.dart';
import '../constants.dart';

class BottomNavigatorBar extends StatefulWidget {
  BottomNavigatorBar({Key key}) : super(key: key);

  @override
  _BottomNavigatorBarState createState() => _BottomNavigatorBarState();
}

class _BottomNavigatorBarState extends State<BottomNavigatorBar> {
  int _currentIndex = 0;
  void _pressTabIndex(int currentIndex) {
    setState(() {
      _currentIndex = currentIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: _pressTabIndex,
      unselectedIconTheme: IconThemeData(color: Colors.black38),
      selectedIconTheme: IconThemeData(color: kTabbarItemColor),
      showUnselectedLabels: false,
      showSelectedLabels: false,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('home')),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite), title: Text('love')),
        BottomNavigationBarItem(
            icon: Icon(Icons.explore), title: Text('explore')),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outline), title: Text('my'))
      ],
      elevation: 0,
    );
  }
}
