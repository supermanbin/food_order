import 'package:flutter/material.dart';

import '../constants.dart';

class MenuItem extends StatelessWidget {
  final String text;
  final bool isActive;
  const MenuItem({Key key, this.text, this.isActive}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                RenderBox box = context.findRenderObject();
                Offset offset = box.localToGlobal(Offset.zero);
                print('${offset} ${context.size}');
              },
              child: Text.rich(TextSpan(
                  text: text,
                  style: TextStyle(
                      color: isActive ? kTextColor : ksecondaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w700))),
            ),
            Container(
              width: 30,
              height: 3,
              margin: EdgeInsets.only(top: 5),
              decoration: BoxDecoration(
                  color: isActive ? kPrimaryColor : Colors.transparent,
                  borderRadius: BorderRadius.all(Radius.circular(2))),
            )
          ],
        ));
  }
}
