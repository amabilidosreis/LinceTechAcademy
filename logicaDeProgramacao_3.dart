
void main(){
   List<String> vogais = ['a', 'e', 'i', 'o', 'u'];
   List<String> consoante = ['b','c','d','f','g','h','j','k','l','m','n','p','q',
     'r','s' ,'t','u','v','w','x', 'y','z'];

   var paragrafo = ('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
       ' Nam venenatis nunc et posuere vehicula. Mauris lobortis quam'
       ' id lacinia porttitor.');

   int palavras = 0;
   int tamanhot = 0;
   int nfrases = 0;
   var nvogais = 0;


   palavras = paragrafo.split(' ').length;

   tamanhot = paragrafo.trim().length;

   nfrases = paragrafo.split('.').length;

   for(int i =0; i < vogais.length; i++){
      nvogais += (vogais[i]).allMatches(paragrafo, 0).length;
   }

    verificarconsoantes(String paragrafo){
      var consoantesen = <String>[];

     for(var rune in paragrafo.trim().runes){
       var caracter = String.fromCharCode(rune).toLowerCase();

       var consoanteSouN = consoante.contains(caracter);
       if (!consoanteSouN){
          continue;
       }

        var jaencontrada = consoantesen.contains(caracter);
           if(!jaencontrada){
             consoantesen.add(caracter);
           }

       final ordenado = (consoantesen.toList())..sort();
       return ordenado.join(', ');
     }
      print('Consoantes encontradas: ${verificarconsoantes(paragrafo)}');
   }

   print('Paragrafo: $paragrafo');
   print('Número de palavras: $palavras');
   print('Tamanho do texto: $tamanhot');
   print('Número de frases: $nfrases');
   print('Número de vogais: $nvogais');
   print('Consoantes encontradas: ${verificarconsoantes(paragrafo)}');

}
