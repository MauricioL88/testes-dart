//Closures é uma função declarada no corpo de uma outra função

funcoesClosures() {

  // CLOSURES SEM RETORNO

  // ignore: prefer_function_declarations_over_variables
  var saudacao = (String nome) {
    // ignore: prefer_function_declarations_over_variables
    var mensagem = (complemento) => print('Olá! $nome $complemento');
    mensagem('seja bem vindo!');
  };
  // Verificando o tipo da função
  print(saudacao);
  saudacao('Maurício');


  // CLOSURES COM RETORNO
  Function somar(int valorA) {
    return(valorB) {
      return valorA + valorB;
    };
  }
  // Introduzindo um valor para o primeiro parâmetro "valorA".
  var somarDez = somar(10);
  // Introduzindo um valor para o segundo parâmetro "valorB".
  print("Soma dos valores: ${somarDez(5)}");


  // CLOSURES USANDO FUNÇÕES (ARROWS) COMO RETORNO
  Function porcentagem(desconto) => (valor) => desconto * valor;
  var descontandoDez = porcentagem(.9);
  var descontandoVinte = porcentagem(.8);
  print('Valor final descontado: ${descontandoDez(100)}');
  print('Valor final descontado: ${descontandoVinte(200)}');


  // CLOSURES COM OBJETOS
  // ignore: prefer_function_declarations_over_variables
  var novoObjeto = () {
    var id = 0;
    // ignore: prefer_function_declarations_over_variables
    var objetoCriado = (String nome, descricao) {
      //Padrão
      // return 'Id: ${(++id).toString().padLeft(2, '0')} | Nome: $nome | Descrição: $descricao.'; // Irá retornar array

      //Validando um map
      // return {'Id': (++id).toString().padLeft(2, '0'), 'Nome': nome, 'Descrição': descricao};

      //Retornar o Objeto
      return Objeto.fromMap({'Id': (++id).toString().padLeft(2, '0'), 'Nome': nome, 'Descrição': descricao});
    };
    return objetoCriado;
  };

  var objeto = novoObjeto();
  print(objeto);

  // Inserindo dados no objeto
  var listaObjetos = [objeto('Fernado', 1.99)];
  listaObjetos.add(objeto('iPhone', 3000.00));
  listaObjetos.add(objeto('Headset', 100));

  // Exibindo os dados do objeto com o "ForIn"
  for(var objeto in listaObjetos) {
    // Exibição padrão
    //print(objeto);

    // Exibição para um map
    // print(objeto.map((chave, valor) => MapEntry(chave, (valor is double) ? '${descontandoDez(valor)}' : valor)));

    // Exibindo a lista a partir de um objeto
    print((objeto.descricao is num) ? descontandoVinte(objeto.descricao) : objeto.descricao);
  }
}

class Objeto {
  late String id, nome;
  late dynamic descricao;

  Objeto({required this.id, required this.nome, required this.descricao});

  factory Objeto.fromMap(Map<String, dynamic>map) {
    return Objeto(id: map['id'].toString(), nome: map['nome'], descricao: map['descricao']);
  }
}

void main() {
  funcoesClosures();
}
