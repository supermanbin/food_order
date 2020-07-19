import 'package:flutter/material.dart';

import '../constants.dart';

class FoodCard extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  const FoodCard({Key key, this.image, this.title, this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.06),
                offset: Offset(0, 0),
                blurRadius: 15)
          ]),
      child: Column(
        children: <Widget>[
          Container(
            height: 80,
            width: 80,
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(80)),
                color: Color.fromRGBO(0, 0, 0, 0.1)),
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(children: [
              TextSpan(
                  text: '$title\n',
                  style: TextStyle(
                      color: kTextLightColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      height: 2)),
              TextSpan(
                  text: '$subTitle',
                  style: TextStyle(
                      color: ksecondaryColor, fontSize: 12, height: 2))
            ]),
          )
        ],
      ),
    );
  }
}
