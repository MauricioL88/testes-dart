import 'cadastro_usuario.dart';

class Conta {

  CadastroUsuario cadastro = CadastroUsuario();

  bool autenticacao = false;
  final String _agencia = '0001';
  late int _conta;
  late String _nomeUsuario;
  late String _login;
  late String _senha;
  double saldo = 0;

  Conta({required String nome, required String login, required String senha}) {
    if(login == cadastro.emalLogin && senha == cadastro.senha && nome == cadastro.nomeCompleto) {
      autenticacao = true;
      _nomeUsuario = nome;
      _login = login;
      _senha = senha;
      print('Login realizado!');
    } else {
      print('Usuário inválido! Criar um usário ou digite o dados corretos!');
    }
  }
}
