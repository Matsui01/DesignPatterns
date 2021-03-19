abstract class Creator {
  Product factoryMethod();

  String someOperation() {
    Product product = this.factoryMethod();
    product.operation();
    return "Creator: The same creator's code has just worked with";
  }
}

class ConcreteCreator1 extends Creator {
  Product factoryMethod() {
    return new ConcreteProduct1();
  }
}

class ConcreteCreator2 extends Creator {
  Product factoryMethod() {
    return new ConcreteProduct2();
  }
}

//interface
abstract class Product {
  String operation();
}

class ConcreteProduct1 implements Product {
  String operation() {
    return '{Result of the ConcreteProduct1}';
  }
}

class ConcreteProduct2 implements Product {
  String operation() {
    return '{Result of the ConcreteProduct2}';
  }
}

class FactoryExample {
  void run() {
    print('App: Launched with the ConcreteCreator1.');
    clientCode(new ConcreteCreator1());
    print('');

    print('App: Launched with the ConcreteCreator2.');
    clientCode(new ConcreteCreator2());
  }

  clientCode(Creator creator) {
    print('Client: I\'m not aware of the creator\'s class, but it still works.');
    print(creator.someOperation());
  }
}