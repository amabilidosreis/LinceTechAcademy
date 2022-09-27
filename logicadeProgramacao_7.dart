
import 'dart:core';

void main() {
  List<int> numeros = [10, 35, 999, 126, 95, 7, 348, 462, 43, 109];
  int somandocomfor = 0;
  int somandocomwhile = 0;

  for (int i = 0; i < numeros.length; i++) {
    somandocomfor = somandocomfor + numeros[i];
  }

  int i = 0;
  while(i < numeros.length){
    somandocomwhile = somandocomwhile + numeros[i];
    i++;
  }

  somandocomrecursao(List<int>numeros){
    if(numeros.isEmpty){
      return 0;
    }
    return numeros.first+somandocomrecursao(numeros.sublist(1));

  }

  int somaLista(List<int> numeros) => numeros.reduce((a, b) => a + b);


  print('for: $somandocomfor');
  print('while: $somandocomwhile');
  print('recursão: ${somandocomrecursao(numeros)}');
  print('list: ${somaLista(numeros)}');
}

