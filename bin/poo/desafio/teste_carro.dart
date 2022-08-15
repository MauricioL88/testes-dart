import '../desafio/carro.dart';

void main() {
  Carro c1 = Carro();

  while(!c1.estaNoLimite()) {
    print('Velocidade: ${c1.acelerar()} Km/h.');
  }
  print('O carro atingiu a velocidade máxima de ${c1.velocidadeAtual} Km/h.');

  print('');
  while(c1.velocidadeAtual > 0) {
    print('Velocidade: ${c1.frear()} Km/h.');
  }
  print('O carro parou na velocidade de ${c1.velocidadeAtual} Km/h');
}
