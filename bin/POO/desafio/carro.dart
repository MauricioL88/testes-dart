class Carro {
  final int velocidadeMaxima;
  int _velocidadeAtual = 0;

  Carro([this.velocidadeMaxima = 150]);

  int get velocidadeAtual => _velocidadeAtual;

  set velocidadeAtual(int novaVelocidade) {
    bool validacao = (_velocidadeAtual - novaVelocidade).abs() <= 5;
    if(validacao && novaVelocidade >= 0) {
      _velocidadeAtual = novaVelocidade;
    }
  }

  int acelerar() {
    if(_velocidadeAtual + 5 >= velocidadeMaxima) {
      _velocidadeAtual = velocidadeMaxima;
    } else {
      _velocidadeAtual += 5;
    }
    return _velocidadeAtual;
  }

  int frear() {
    if(_velocidadeAtual - 5 <= 0) {
      _velocidadeAtual = 0;
    } else {
      _velocidadeAtual -= 5;
    }
    return _velocidadeAtual;
  }

  bool estaNoLimite() {
    return _velocidadeAtual == velocidadeMaxima;
  }
}