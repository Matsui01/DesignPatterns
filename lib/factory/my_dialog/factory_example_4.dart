import 'package:flutter/cupertino.dart';

abstract class Buttons {
  Widget build();
}

class CupertinoButton implements Buttons {
  @override
  Widget build() {
    return Container();
  }
}

class Button2 implements Buttons {
  @override
  Widget build() {
    return Container();
  }
}

//-----------------------------------
//Estes codigos servem apenas para criar o botão, mas o jeito mais simples e menos complexo de se criar um widget
//seria o factory_example_2.dart
//Acho que esse exemplo é meio ruim para coisas simples, se for lidar com uma estrutura grande, acho que ai sim seria legal
// só a parte de cima ja é o suficiente.
//Basicamente a parte de cima é um factory e a parte de baixo é um Factory do factory

abstract class ButtonFactory {
  Buttons create();
}

class CupertinoButtons implements ButtonFactory {
  @override
  Buttons create() {
    return CupertinoButton();
  }
}

class MaterialButtons implements ButtonFactory {
  @override
  Buttons create() {
    return Button2();
  }
}

//-----------------------------------


