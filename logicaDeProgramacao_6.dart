
void main(){

  List<int> numeros = [ 3, 17, 23, 49, 328, 1358, 21, 429, 12, 103, 20021];
  List<String> binario = [];
  List<String> octal = [];
  List<String> hexadecimal = [];

  var i = 0;

  numeros.sort();

  while(i < numeros.length){
  binario = [numeros[i].toRadixString(2)];
  octal = [numeros[i].toRadixString(8)];
  hexadecimal = [numeros[i].toRadixString(16)];

  print('decimal: ${numeros[i]}, binario: $binario, octal: $octal, hexadecimal: $hexadecimal');

  i++;

  }
}