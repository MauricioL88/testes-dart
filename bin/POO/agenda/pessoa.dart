import 'contato.dart';

class Pessoa {
  late int cadastro;
  late String nome;
  late List<Contato> contato;

  Pessoa({required this.cadastro, required this.nome, this.contato = const []});

}
