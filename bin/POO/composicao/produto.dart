class Produto {
  late int codigo;
  late String nome;
  double preco;
  late double desconto;

  Produto({required this.codigo, required this.nome, required this.desconto,
    this.preco = 0.00});

  double get precoComDesconto {
    return (1 - desconto) * preco;
  }
}
