// Exercício 1: Classe Aluno
class Aluno {
  String nome;
  double nota1;
  double nota2;

  Aluno(this.nome, this.nota1, this.nota2);

  double calcularMedia() {
    return (nota1 + nota2) / 2;
  }
}

// Exercício 2: Classe Produto com método calcularDesconto
class Produto {
  double preco;

  Produto(this.preco);

  double calcularDesconto(double percentual) {
    return preco - (preco * percentual / 100);
  }
}

// Exercício 3: Herança - Funcionário e Gerente
class Funcionario {
  String nome;
  double salario;

  Funcionario(this.nome, this.salario);

  void exibirDados() {
    print('Funcionário: $nome | Salário: R\$ ${salario.toStringAsFixed(2)}');
  }
}

class Gerente extends Funcionario {
  double bonus;

  Gerente(String nome, double salario, this.bonus) : super(nome, salario);

  @override
  void exibirDados() {
    double salarioTotal = salario + bonus;
    print(
      'Gerente: $nome | Salário com bônus: R\$ ${salarioTotal.toStringAsFixed(2)}',
    );
  }
}

// Exercício 4: Encapsulamento com atributos privados
class ContaBancaria {
  String _titular = '';
  double _saldo = 0;

  String get titular => _titular;
  double get saldo => _saldo;

  set titular(String nome) {
    _titular = nome;
  }

  void depositar(double valor) {
    if (valor > 0) _saldo += valor;
  }

  void sacar(double valor) {
    if (valor > 0 && valor <= _saldo) _saldo -= valor;
  }
}

// Exercício 5: Interface e Implementações
abstract class Veiculo {
  void acelerar();
  void frear();
}

class Carro implements Veiculo {
  @override
  void acelerar() {
    print('Carro acelerando...');
  }

  @override
  void frear() {
    print('Carro freando...');
  }
}

class Moto implements Veiculo {
  @override
  void acelerar() {
    print('Moto acelerando...');
  }

  @override
  void frear() {
    print('Moto freando...');
  }
}
