import 'dart:math';

void main() {
  final pessoa = Pessoa();
  final fornecedor = [
    FornecedorDeBebidas(),
    FornecedorBolos(),
    FornecedorSaladas(),
    FornecedorPetiscos(),
    FornecedorUltraCal()
  ];
  final random = Random();
  int numero = 0;

  // Consumindo produtos fornecidos
  for (var i = 0; i < 5; i++) {
    numero = random.nextInt(fornecedor.length);
    pessoa.refeicao(fornecedor[numero]);
  }

  pessoa.informacoes();

  pessoa.estaSaudavel();
}

class Produto {
  Produto(this.nome, this.calorias);

  final String nome;
  final int calorias;
}

class FornecedorDeBebidas {
  final _random = Random();
  final _bebidasDisponiveis = <Produto>[
    Produto('Agua', 0),
    Produto('Refrigerante', 200),
    Produto('Suco de fruta', 100),
    Produto('Energetico', 135),
    Produto('Café', 60),
    Produto('Cha', 35),
  ];

  /// Retorna um produto que pode ser consumido por um consumidor
  Produto fornecer() {
    return _bebidasDisponiveis[_random.nextInt(_bebidasDisponiveis.length)];
  }
}

class FornecedorBolos {
  final _random = Random();
  final _bolosDisponiveis = <Produto>[
    Produto('Bolo de chocolate', 371),
    Produto('Bolo de morango', 390)
  ];

  /// Retorna um produto que pode ser consumido por um consumidor
  Produto fornecer() {
    return _bolosDisponiveis[_random.nextInt(_bolosDisponiveis.length)];
  }
}

class FornecedorSaladas {
  final _random = Random();
  final _saladasDisponiveis = <Produto>[
    Produto('Alface', 15),
    Produto('Tomate', 18)
  ];

  /// Retorna um produto que pode ser consumido por um consumidor
  Produto fornecer() {
    return _saladasDisponiveis[_random.nextInt(_saladasDisponiveis.length)];
  }
}

class FornecedorPetiscos {
  final _random = Random();
  final _petiscosDisponiveis = <Produto>[
    Produto('Amendoim', 567),
    Produto('Pipoca', 375)
  ];

  /// Retorna um produto que pode ser consumido por um consumidor
  Produto fornecer() {
    return _petiscosDisponiveis[_random.nextInt(_petiscosDisponiveis.length)];
  }
}

class FornecedorSanduiches {
  final _random = Random();
  final _sanduichesDisponiveis = <Produto>[
    Produto('Sanduiche natural', 210),
    Produto('Misto quente', 284)
  ];

  /// Retorna um produto que pode ser consumido por um consumidor
  Produto fornecer() {
    return _sanduichesDisponiveis[
        _random.nextInt(_sanduichesDisponiveis.length)];
  }
}

class FornecedorUltraCal {
  final _random = Random();
  final _ultraCalDisponiveis = <Produto>[
    Produto('Pizza', 266),
    Produto('Sorvete', 207)
  ];

  /// Retorna um produto que pode ser consumido por um consumidor
  Produto fornecer() {
    return _ultraCalDisponiveis[_random.nextInt(_ultraCalDisponiveis.length)];
  }
}

class Pessoa {
  final _random = Random();
  int caloriasIniciais = 0;
  int quantRefeicoes = 0;

  // Acumulador de calorias
  num _caloriasConsumidas = 0;

  /// Imprime as informações desse consumidor
  void informacoes() {
    caloriasIniciais = _random.nextInt(2000);
    _caloriasConsumidas += caloriasIniciais;
    print('Calorias consumidas: $_caloriasConsumidas');
    print('Fez $quantRefeicoes refeições');
  }

  /// Consome um produto e aumenta o numero de calorias
  void refeicao(final fornecedor) {
    final produto = fornecedor.fornecer();
    print('Consumindo ${produto.nome} (${produto.calorias} calorias)');

    _caloriasConsumidas += produto.calorias;
    quantRefeicoes++;
  }

  void estaSaudavel() {
    if (_caloriasConsumidas <= 500) {
      print('Está em deficit extremo');
      print('Precisa de mais refeições');
    } else if (_caloriasConsumidas <= 1800) {
      print('Está em deficit de calorias');
      print('Precisa de mais refeições');
    } else if (_caloriasConsumidas <= 2500) {
      print('Pessoa satisfeita');
      print('Não precisa de mais refeições');
    } else {
      print('Excesso de calorias');
      print('Não precisa de mais Refeições');
    }
  }
}
