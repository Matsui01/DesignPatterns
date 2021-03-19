abstract class Criador {
  //metodo abstrato
  Veiculo construirVeiculo();

  void iniciarCorrida() {
    Veiculo veiculo = this.construirVeiculo();
    veiculo.acelerar();
    veiculo.frear();
    veiculo.acelerar();
  }
}

class ConstruiMoto extends Criador {
  Veiculo construirVeiculo() {
    return new Moto();
  }
}

class ConstruirCarro extends Criador {
  Veiculo construirVeiculo() {
    return new Carro();
  }
}

//interface
abstract class Veiculo {
  void acelerar();
  void frear();
}

class Moto implements Veiculo {
  void acelerar() {
    print("Moto Acelerando!!");
  }
  void frear() {
    print("Moto freiando!!");
  }
}

class Carro implements Veiculo {
  void acelerar() {
    print("Carro Acelerando!!");
  }
  void frear() {
    print("Carro freiando!!");
  }
}

class FactorySimpleExample {
  void run() {
    clientCode(new ConstruirCarro());
    print('');
    clientCode(new ConstruiMoto());
  }

  clientCode(Criador creator) {
    creator.iniciarCorrida();
  }
}
