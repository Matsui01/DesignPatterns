import 'package:designpatterns/constants/my_colors.dart';
import 'package:designpatterns/factory/factory_example.dart';
import 'package:designpatterns/my_button.dart';
import 'package:flutter/material.dart';

class FactoryScreen extends StatefulWidget {
  @override
  _FactoryScreenState createState() => _FactoryScreenState();
}

class _FactoryScreenState extends State<FactoryScreen> {
  FactoryExample factoryExample = FactoryExample();
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
            )
          ],
        ),
      ),
    );
  }
}
