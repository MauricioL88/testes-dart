void main() {
  // Declaração de função como variável

  // tipo nome = valor;
  int Function(int, int) soma1 = somaFn;
  print('Resultado: ${soma1(2,3)}');

  // Declaração de variável como função com uma função anônima
  int Function(int, int) soma2 = (x, y) {
    return x + y;
  };
  print('\nResultado: ${soma2(131, 50)}');

  // Sem inferência explícita do tipo
  var soma3 = (int x, int y) {
    return x + y;
  };
  print('\nResultado: ${soma3(150, 25)}');
}

int somaFn(int a, int b) {
  return a + b;
}
