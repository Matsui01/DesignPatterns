import 'package:designpatterns/constants/my_colors.dart';
import 'package:designpatterns/factory/factory_button/factory_button_screen.dart';
import 'package:designpatterns/factory/factory_dialog/factory_screen.dart';
import 'package:designpatterns/factory/factory_example.dart';
import 'package:designpatterns/factory/factory_simple_example.dart';
import 'package:designpatterns/factory/my_dialog/my_dialog_screen.dart';
import 'package:designpatterns/my_button.dart';
import 'package:designpatterns/my_navigation.dart';
import 'package:flutter/material.dart';

class FactoryScreen extends StatefulWidget {
  @override
  _FactoryScreenState createState() => _FactoryScreenState();
}

class _FactoryScreenState extends State<FactoryScreen> {
  FactoryExample factoryExample = FactoryExample();
  FactorySimpleExample factorySimpleExample = FactorySimpleExample();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 50, 50, 50),
      body: Container(
        child: ListView(
          children: [
            MyButton(
              title: "Run Example",
              subtitle: "Test example logs",
              icon: Icon(
                Icons.code_rounded,
                color: MyColors.secondary,
                size: 20,
              ),
              function: (){
                factoryExample.run();
              },
            ),
            MyButton(
              title: "Run Veicle Simple Example",
              subtitle: "Test veicle example logs",
              icon: Icon(
                Icons.code_rounded,
                color: MyColors.secondary,
                size: 20,
              ),
              function: (){
                factorySimpleExample.run();
              },
            ),
            MyButton(
              title: "Go To Buttons Screen",
              subtitle: "Test factory in Buttons",
              icon: Icon(
                Icons.send,
                color: MyColors.secondary,
                size: 20,
              ),
              function: (){
                MyNavigation.push(context, FactoryBttonScreen());
              },
            ),
            MyButton(
              title: "Go To Dialog Screen",
              subtitle: "Test factory in Dialog examples",
              icon: Icon(
                Icons.send,
                color: MyColors.secondary,
                size: 20,
              ),
              function: (){
                MyNavigation.push(context, MyDialogScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
