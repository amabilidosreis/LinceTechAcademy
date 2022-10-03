import 'dart:math' as math;

void main() {
  // Definindo o comparador de formas
  final comparador = ComparadorFormasGeometricas();

  // Definindo as formas geometricas
  final circuloA = Circulo('Circulo A', 3);
  final circuloB = Circulo('Circulo B', 8);
  final retanguloA = Retangulo('Retangulo A', 4, 3);
  final retanguloB = Retangulo('Retangulo B', 19, 11);

  final circuloMaiorArea = comparador.getArea(circuloA, circuloB);
  final retanguloMaiorArea = comparador.getArea(
    retanguloA,
    retanguloB,
  );

  if (circuloMaiorArea.area > retanguloMaiorArea.area) {
    print(
      'A maior area é ${circuloMaiorArea.area.toStringAsFixed(2)} '
      'e pertence a ${circuloMaiorArea.nome}',
    );
  } else {
    print(
      'A maior area é ${retanguloMaiorArea.area.toStringAsFixed(2)} '
      'e pertence a ${retanguloMaiorArea.nome}',
    );
  }

  final circuloaiorPerimetro = comparador.getPerimetro(
    circuloA,
    circuloB,
  );
  final retanguloMaiorPerimetro = comparador.getPerimetro(
    retanguloA,
    retanguloB,
  );
  if (circuloaiorPerimetro.area > retanguloMaiorPerimetro.area) {
    print(
      'O maior perimetro é ${circuloaiorPerimetro.perimetro.toStringAsFixed(2)} '
      'e pertence a ${circuloaiorPerimetro.nome}',
    );
  } else {
    print(
      'O maior perimetro é ${retanguloMaiorPerimetro.perimetro.toStringAsFixed(2)} '
      'e pertence a ${retanguloMaiorPerimetro.nome}',
    );
  }
}

abstract class Forma {
  String nome;

  Forma(this.nome);
}

/// Representa a forma geometrica "círculo"
class Circulo extends Forma {
  /// Construtor padrão, recebe o [raio] do círculo.
  Circulo(super.nome, this.raio);

  final double raio;

  /// Retorna a area desse circulo
  double get area => math.pi * math.pow(raio, 2);

  /// Retorna o perimetro desse circulo
  double get perimetro => 2 * math.pi * raio;
}

/// Representa a forma geometrica "retangulo", forma geometrica de quatro lados
/// e angulos retos (90 graus).
class Retangulo extends Forma {
  /// Construtor padrão, recebe a [altura] e [largura] do retangulo
  Retangulo(super.nome, this.altura, this.largura);

  final double largura;
  final double altura;

  double get area => altura * largura;

  double get perimetro => (altura * 2) + (largura * 2);
}

/// Representa a forma geometrica "quadrado", que é um formato especial de
/// retangulo, onde todos os lados possuem o mesmo tamanho.
class Quadrado extends Forma {
  /// Construtor padrão, recebe o [lado] do quadrado
  Quadrado(super.nome, this.lado);

  final double lado;

  double get area => lado * lado;

  double get perimetro => lado * 4;
}

class TrianguloEquilatero extends Forma {
  TrianguloEquilatero(super.nome, this.lado, this.altura);

  final double lado;
  double altura;

  double get area => lado * altura / 2;

  double get perimetro => lado * 3;
}

class TrianguloRetangulo extends Forma {
  TrianguloRetangulo(
      super.nome, this.lado1, this.lado2, this.lado3, this.altura, this.base);

  final double lado3;
  double lado1;
  double lado2;
  double altura;
  double base;

  double get area => base * altura / 2;

  double get perimetro => lado1 + lado2 + lado3;
}

class Pentagono extends Forma {
  Pentagono(super.nome, this.lado, this.altura, this.apotema);

  final double lado;
  double altura;
  double apotema;

  double get area => lado * 5 * apotema;

  double get perimetro => lado * 5;
}

class Hexagono extends Forma {
  Hexagono(super.nome, this.lado, this.altura);

  final double lado;
  double altura;

  double get area => ((3 * math.sqrt(3)) * math.pow(lado, 2)) / 2;

  double get perimetro => lado * 6;
}

/// Compara caracteristicas de formas geometricas
class ComparadorFormasGeometricas {
  /// Retorna a forma com a maior area, ou [circuloA] caso as areas sejam
  /// iguais
  getArea(final circuloA, final circuloB) {
    if (circuloA.area > circuloB.area) {
      return circuloA;
    } else if (circuloB.area > circuloA.area) {
      return circuloB;
    }
    return circuloA;
  }

  /// Retorna a forma com o maior perimetro, ou [circuloA] caso os perimetros
  /// sejam iguais
  getPerimetro(final circuloA, final circuloB) {
    if (circuloA.perimetro > circuloB.perimetro) {
      return circuloA;
    } else if (circuloB.perimetro > circuloA.perimetro) {
      return circuloB;
    }
    return circuloA;
  }
}
