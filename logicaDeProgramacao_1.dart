import 'dart:math';

void main(){
  List<double> raios = [5.0, 8.0, 12.0, 7.3, 18.0, 2.0, 25.0];
  double area = 0;
  double perimetro = 0;

  for(int i =0; i < raios.length; i++){
    area = (raios[i] * raios[i]) * pi;
    perimetro = 2 * pi * raios[i];

    print('Raio: ${raios[i]}, área: ${area.toStringAsFixed(2)}, perímetro: ${perimetro.toStringAsFixed(2)}.');
  }
}