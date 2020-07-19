import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

AppBar buildAppBar() {
  void _notificationTapHandle() {
    print("aaa");
  }

  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0.5, // 清除阴影
    leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"), onPressed: null),
    title: RichText(
        text: TextSpan(children: [
      TextSpan(
          text: "Punk",
          style: TextStyle(
              color: kPrimaryColor, fontSize: 20, fontWeight: FontWeight.w700)),
      TextSpan(
          text: "Food",
          style: TextStyle(
              color: ksecondaryColor,
              fontSize: 20,
              fontWeight: FontWeight.w700))
    ])),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset("assets/icons/notification.svg"),
        onPressed: _notificationTapHandle,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        color: kPrimaryColor,
        focusColor: kPrimaryColor,
        hoverColor: kPrimaryColor,
        tooltip: "notification",
      )
    ],
  );
}
