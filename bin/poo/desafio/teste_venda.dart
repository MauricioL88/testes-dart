import '../composicao/cliente.dart';
import '../composicao/produto.dart';
import '../composicao/venda.dart';
import '../composicao/venda_item.dart';

void main() {
  var venda1 = Venda(
    cliente: Cliente(
      nome: 'Mauricio Lisboa',
      cpf: '012.345.678-90'
    ),
    itens: <VendaItem>[
      VendaItem(
          produto: Produto(
            codigo: 1,
            nome: 'Caneta Azul',
            preco: 1.15,
            desconto: 0.08
          ),
        quantidade: 3
      ),
      VendaItem(
        produto: Produto(
          codigo: 2,
          nome: 'Lápis 6B',
          preco: 2.50,
          desconto: 0.05
        ),
        quantidade: 1
      ),
      VendaItem(
        produto: Produto(
          codigo: 3,
          nome: 'Borracha Branca',
          preco: 0.50,
          desconto: 0.03
        ),
        quantidade: 2
      )
    ]
  );

  print('O valor total da venda foi de R\$ '
      '${venda1.valorTotal.toStringAsFixed(2)} reais.');
}
