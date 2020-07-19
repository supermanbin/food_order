import 'package:flutter/material.dart';

import '../constants.dart';

class ADBanner extends StatelessWidget {
  const ADBanner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 15, top: 10),
          child: RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                  text: 'Offers & Discounts',
                  style: TextStyle(
                      color: kTextLightColor, fontWeight: FontWeight.w700))),
        ),
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: GestureDetector(
            onTap: () {
              print('banner');
            },
            child: Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 165,
                  child: Image.asset(
                    "assets/images/beyond-meat-mcdonalds.png",
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Positioned(
                    // width: double.infinity,
                    height: 80,
                    left: 0,
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: '80',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 30)),
                            TextSpan(
                                text: ' %',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 14))
                          ])),
                        ],
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomLeft,
                          colors: [
                            Colors.transparent,
                            Color.fromRGBO(0, 0, 0, 0.9),
                          ],
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
