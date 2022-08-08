void main() {
  var lista = ['Ana', 'Lia', 'Gui'];
  print(lista);
  print('');
  // Usando 'var' a lista se torna variável
  lista.add('Rebecca');
  print(lista);
  print('');

  /*
    Usando o 'final' não é possível criar uma novo tipo de lista,
    mas é possível modificá-la, como: adicionar um novo item,
    remover, entre outros...
  */
  final frutas = ['Banana', 'Maçã', 'Uva'];
  print(frutas);
  print('');
  // frutas = ['Carro', 'Moto', 'Bicicleta'];
  frutas.add('Kiwi');
  print(frutas);
  print('');

  /*
    * Usando o 'const' não é possível alterar o tipo da lista nem o
    * seu conteúdo.
  */

  final alunos = const ['Maurício', 'Evelin'];
  print(alunos);
}
