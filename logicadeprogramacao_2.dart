void main() {
 List<double> temperaturasC = [0.00, 4.20, 15.00, 18.10, 21.70, 32.00, 40.00, 41.00];
 double fahrenheit = 0.0;
 double kelvin = 0.0;

 for(int i = 0 ;i<temperaturasC.length; i++){
     fahrenheit = (i * 9/5) + 32;
     kelvin = i + 273.15;

   print('Celsius: ${temperaturasC[i]}, fahrenheit $fahrenheit, kelvin: $kelvin');
 }
}
