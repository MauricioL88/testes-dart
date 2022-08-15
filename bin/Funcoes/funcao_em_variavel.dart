void main() {
  // Declaração de função como variável

  // tipo nome = valor;
  int Function(int, int) soma1 = somaFn;
  print('Resultado: ${soma1(2,3)}');

  // Declaração de variável como função com uma função anônima
  // ignore: prefer_function_declarations_over_variables
  int Function(int, int) soma2 = (x, y) {
    return x + y;
  };
  print('\nResultado: ${soma2(131, 50)}');

  // Sem inferência explícita do tipo
  // ignore: prefer_function_declarations_over_variables
  var soma3 = (int x, int y) {
    return x + y;
  };
  print('\nResultado: ${soma3(150, 25)}');
}

int somaFn(int a, int b) {
  return a + b;
}
