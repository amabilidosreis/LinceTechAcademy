void main() {
  BibliotecaDeMusicas busca = BibliotecaDeMusicas();
  busca.buscarMusica('Golden');
}

class BibliotecaDeMusicas {
  List<Musicas> biblioteca = [
    Musicas('Golden', 'Harry Styles', 'Fine Line', 209),
    Musicas('Dandelions', 'Ruth B.', 'Safe Haven', 228),
    Musicas('Oceans', 'Hillsong United', 'Zion', 488)
  ];

  buscarMusica(String texto) {
    int i = 0;
    for (final it in biblioteca) {
      if (it.titulo == texto) {
        print(biblioteca[i].toString());
      } else if (it.artista == texto) {
        print(biblioteca[i].toString());
      } else if (it.album == texto) {
        print(biblioteca[i].toString());
      }
      i++;
    }
  }
}

class Musicas {
  Musicas(this.titulo, this.artista, this.album, this.duracao);

  String titulo;
  String artista;
  String album;
  int duracao;

  @override
  String toString() {
    return '${this.titulo}, ${this.artista},${this.album},${this.duracao /
        3600}';
  }
}