import 'package:designpatterns/factory/factory_button/factory_button_example.dart';
import 'package:designpatterns/my_app_bar.dart';
import 'package:flutter/material.dart';

class FactoryBttonScreen extends StatefulWidget {
  @override
  _FactoryBttonScreenState createState() => _FactoryBttonScreenState();
}

class _FactoryBttonScreenState extends State<FactoryBttonScreen> {
  // FactoryButtonExample factoryButtonExample = FactoryButtonExample();
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 50, 50, 50),
      appBar: MyAppBar(),
      body: ListView(
        children: [
          CreateFlatButton().createButton().build(),
          CreateOutlineButton().createButton().build(),
        ],
      ),
    );
  }
}
