import '../agenda/pessoa.dart';
import '../agenda/contato.dart';

void main() {
  var contato1 = Pessoa(
    cadastro: 1,
    nome: 'Mauricio Lisboa',
    contato: <Contato>[
      Contato(
        nome: 'Celular',
        telefone: '(71) 99999-9999'
      ),
      Contato(
        nome: 'Trabalho',
        telefone: '(71) 3333-3333'
      )
    ]
  );

}