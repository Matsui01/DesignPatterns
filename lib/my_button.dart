import 'package:designpatterns/constants/my_margin.dart';
import 'package:flutter/material.dart';

import 'constants/my_colors.dart';

class MyButton extends StatelessWidget {
  final String title;
  final String subtitle;
  final Icon icon;
  final Function function;

  MyButton({
    @required this.title,
    @required this.subtitle,
    @required this.icon,
    @required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: MyMargin.mainMargin,
        right: MyMargin.mainMargin,
      ),
      child: FlatButton(
        highlightColor: MyColors.pressed,
        splashColor: MyColors.pressed,
        onPressed: function,
        padding: EdgeInsets.zero,
        // color: Colors.red,
        child: Column(
          children: [
            Container(height: MyMargin.mainMargin),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        softWrap: true,
                        style: TextStyle(
                          color: MyColors.primary,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        subtitle,
                        softWrap: true,
                        style: TextStyle(
                          color: MyColors.secondary,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: icon,
                  // color: MyColors.secondary,
                  alignment: Alignment.centerRight,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: MyMargin.mainMargin),
              height: 0.5,
              color: MyColors.secondary,
            ),
          ],
        ),
      ),
    );
  }
}
