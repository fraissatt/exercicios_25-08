import 'package:exercicios/poo_exercicios.dart';

void main() {
  // Aluno
  var aluno = Aluno('João', 8.5, 7.5);
  print('Média de ${aluno.nome}: ${aluno.calcularMedia()}');

  // Produto
  var produto = Produto(100);
  print('Preço com 10% de desconto: R\$ ${produto.calcularDesconto(10)}');

  // Funcionário e Gerente
  var f = Funcionario('Carlos', 3000);
  f.exibirDados();
  var g = Gerente('Fernanda', 5000, 1500);
  g.exibirDados();

  // ContaBancaria
  var conta = ContaBancaria();
  conta.titular = 'João Vítor';
  conta.depositar(500);
  conta.sacar(200);
  print('Titular: ${conta.titular} | Saldo: R\$ ${conta.saldo}');

  // Veículo
  Veiculo carro = Carro();
  carro.acelerar();
  carro.frear();

  Veiculo moto = Moto();
  moto.acelerar();
  moto.frear();
}
