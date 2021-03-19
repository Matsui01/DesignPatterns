import 'package:flutter/material.dart';

abstract class Creator {
  Button createButton();

  String someOperation() {
    Button button = this.createButton();
    button.build();
    return "Creator: The same creator's code has just worked with";
  }
}

class CreateFlatButton extends Creator {
  Button createButton() {
    return new FlatButton();
  }
}

class CreateOutlineButton extends Creator {
  Button createButton() {
    return new OutlineButton();
  }
}

//interface
abstract class Button {
  Widget build();
}

class FlatButton implements Button {
  Widget build() {
    return Container();
  }
}

class OutlineButton implements Button {
  Widget build() {
    return Container();
  }
}

// class FactoryExample {
//   void run() {
//     clientCode(new ConcreteCreator1());

//     clientCode(new ConcreteCreator2());
//   }

//   clientCode(Creator creator) {
//     creator.someOperation();
//   }
// }
