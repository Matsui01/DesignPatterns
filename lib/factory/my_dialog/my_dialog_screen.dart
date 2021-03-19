import 'package:designpatterns/constants/my_colors.dart';
import 'package:designpatterns/main.dart';
import 'package:designpatterns/my_app_bar.dart';
import 'package:designpatterns/my_button.dart';
import 'package:flutter/material.dart';

class MyDialogScreen extends StatefulWidget {
  @override
  _MyDialogScreenState createState() => _MyDialogScreenState();
}

class _MyDialogScreenState extends State<MyDialogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 50, 50, 50),
      appBar: MyAppBar(title: "Dialog",),
      body: Center(
        child: MyButton(
          title: "Show Flat dialog",
          subtitle: "Show",
          icon: Icon(
            Icons.message,
            color: MyColors.secondary,
            size: 20,
          ),
          function: () {
            
          },
        ),
      ),
    );
  }
}
