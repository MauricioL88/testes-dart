import './cliente.dart';
import './venda_item.dart';

class Venda {
  late Cliente cliente;
  late List<VendaItem> itens;

  Venda({required this.cliente, required this.itens});

  double get valorTotal {
    return itens
        .map((item) => item.preco * item.quantidade)
        .reduce((t, a) => t + a);
  }
}
