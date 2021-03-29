import 'package:designpatterns/factory/my_dialog/my_dialog.dart';
import 'package:flutter/material.dart';

class MyFlatDialog extends MyDialog {
  @override
  Widget create(BuildContext context) {
    return Container(
      height: 100,
      child: Center(
        child: Text(
          "Flat Dialog",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
