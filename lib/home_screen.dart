import 'package:designpatterns/constants/my_colors.dart';
import 'package:designpatterns/factory/factory_screen.dart';
import 'package:designpatterns/my_button.dart';
import 'package:designpatterns/my_navigation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 50, 50, 50),
      appBar: AppBar(
        title: Text(
          "Desing Patterns",
          style: TextStyle(
            color: MyColors.secondary,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        backgroundColor: MyColors.primary,
      ),
      body: ListView(
        children: [
          MyButton(
            title: "Factory",
            subtitle: "Creational design patterns studies \"Factory Method\"",
            icon: Icon(
              Icons.account_tree_outlined,
              color: MyColors.secondary,
              size: 20,
            ),
            function: () {
              MyNavigation.push(context, FactoryScreen());
            },
          )
        ],
      ),
    );
  }
}
