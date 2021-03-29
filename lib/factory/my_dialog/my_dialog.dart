import 'dart:ui';

import 'package:designpatterns/constants/my_margin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class MyDialog {
  Widget create(BuildContext context);

  Future<void> show(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) {
        return GestureDetector(
          onTap: () {
            print("ok");
          },
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
            child: AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              backgroundColor: Color.fromARGB(50, 255, 255, 255),
              elevation: 0,

              insetPadding: EdgeInsets.only(right: MyMargin.mainMargin, left: MyMargin.mainMargin),
              contentPadding: EdgeInsets.all(0),
              // child: content,
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  create(context),
                ],
              ),
            ),
          ),
        );
      },
    ).then((val) {
      // if (callback != null) {
      //   callback();
      // }
    });
  }
}
