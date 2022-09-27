import 'Dart:math';

void main(){
  List<String> nomes = [
    'Ana',
    'Maria',
    'Francisco',
    'João',
    'Pedro',
    'Gabriel',
    'Rafaela',
    'Marcio',
    'Jose',
    'Carlos',
    'Patricia',
    'Helena',
    'Camila',
    'Mateus',
    'Gabriel',
    'Samuel',
    'Karina',
    'Antonio',
    'Daniel',
    'Joel',
    'Cristiana',
    'Sebastião',
    'Paula'
  ];

  List<String> sobrenomes = [
    'Silva',
    'Souza',
    'Almeida',
    'Azevedo',
    'Braga',
    'Barros',
    'Campos',
    'Cardoso',
    'Costa',
    'Teixeira',
    'Santos',
    'Rodrigues',
    'Ferreira',
    'Alves',
    'Pereira',
    'Lima',
    'Gomes',
    'Ribeiro',
    'Carvalho',
    'Lopes',
    'Barbosa'
  ];

  var random = Random();
  var gnome = nomes[random.nextInt(nomes.length)];
  var gsobrenome = sobrenomes[random.nextInt(sobrenomes.length)];

  print('Nome gerado: $gnome $gsobrenome');
}