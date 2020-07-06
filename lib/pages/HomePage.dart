import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_order/constants.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  void _pressTabIndex(int currentIndex) {
    setState(() {
      _currentIndex = currentIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5, // 清除阴影
        leading: IconButton(
            icon: SvgPicture.asset("assets/icons/menu.svg"), onPressed: null),
        title: RichText(
            text: TextSpan(children: [
          TextSpan(text: "Punk", style: TextStyle(color: kPrimaryColor)),
          TextSpan(text: "Food", style: TextStyle(color: kTextColor))
        ])),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (currentIndex) => {_pressTabIndex(currentIndex)},
        unselectedIconTheme: IconThemeData(color: Colors.black38),
        selectedIconTheme: IconThemeData(color: kPrimaryColor),
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
      ),
    );
  }
}
