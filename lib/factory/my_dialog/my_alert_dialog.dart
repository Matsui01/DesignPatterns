import 'package:designpatterns/constants/my_colors.dart';
import 'package:designpatterns/factory/my_dialog/my_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAlertDialog extends MyDialog {
  @override
  Widget create(BuildContext context) {
    return Container(
      height: 100,
      child: Center(
        child: Text(
          "Alert Dialog",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
