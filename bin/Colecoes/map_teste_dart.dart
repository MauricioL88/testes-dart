void main(List<String> arguments) {
  Map<String, double> criptos = {
    'Bitcoin': 120250.00,
    'Ethereum': 6990.15
  };

  for(var registro in criptos.entries) {
    print('Ativo: ${registro.key} - Valor: ${registro.value}');
  }
}
