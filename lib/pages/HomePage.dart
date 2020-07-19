import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_order/components/ad_banner.dart';
import 'package:food_order/components/app_bar.dart';
import 'package:food_order/components/food_card.dart';
import 'package:food_order/components/menu_item.dart';
import 'package:food_order/constants.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  String _searchVal = '';

  var menu = <Map>[
    {'index': 0, 'text': 'Combo Meal', 'isActive': false},
    {'index': 1, 'text': 'Chicken', 'isActive': false},
    {'index': 2, 'text': 'Beverages', 'isActive': false},
    {'index': 3, 'text': 'Snackes', 'isActive': false},
  ];

  void _pressTabIndex(int currentIndex) {
    setState(() {
      _currentIndex = currentIndex;
    });
  }

  void _onChangeInputValue(String value) {
    print(value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      bottomNavigationBar: BottomNavigationBar(
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
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 2, right: 20, bottom: 0, left: 20),
              height: 52.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.1),
                        offset: Offset(0, 0),
                        blurRadius: 10)
                  ]),
              child: TextField(
                maxLines: 1,
                minLines: 1,
                onChanged: _onChangeInputValue,
                decoration: InputDecoration(
                    icon: SvgPicture.asset("assets/icons/search.svg"),
                    border: InputBorder.none,
                    hintText: 'Search',
                    hintStyle: TextStyle(color: ksecondaryColor)),
              ),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.only(top: 10),
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MenuItem(
                    text: 'Combo Meal',
                    isActive: true,
                  ),
                  MenuItem(
                    text: 'Chicken',
                    isActive: false,
                  ),
                  MenuItem(
                    text: 'Beverages',
                    isActive: false,
                  ),
                  MenuItem(
                    text: 'Snackes',
                    isActive: false,
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                children: <Widget>[
                  FoodCard(
                    title: 'Burger & Beer',
                    subTitle: 'Macdonalds',
                  ),
                  FoodCard(
                    title: 'Burger & Beer',
                    subTitle: 'Macdonalds',
                  ),
                  FoodCard(
                    title: 'Burger & Beer',
                    subTitle: 'Macdonalds',
                  ),
                  FoodCard(
                    title: 'Burger & Beer',
                    subTitle: 'Macdonalds',
                  )
                ],
              ),
            ),
            ADBanner(),
            ADBanner(),
          ],
        ),
      ),
    );
  }
}
