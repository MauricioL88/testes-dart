/// SINTAXE COMUM
/// () {
///   Instrução do código
/// }
///
/// SINTAXE COM ARROW
/// () => print('Exemplo de função anônima com arrow');
///
///

funcoesAnonimas() {
  // Função anônima como variável
  // ignore: prefer_function_declarations_over_variables
  var variavelAnonima = () => print('Função anônima como variável');
  variavelAnonima();

  // ignore: prefer_function_declarations_over_variables
  var varialvelAnonimaParam = (String msg) => print('Variável anônima $msg');
  varialvelAnonimaParam('com parâmetro');

  void executarFuncao(Function funcao) => funcao();
  executarFuncao(() => print('Função anônima passada como parâmetro.'));
}

void main() {
  funcoesAnonimas();
}
