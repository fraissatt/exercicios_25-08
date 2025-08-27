import 'dart:io';
import 'package:exercicios/utils/io.dart';

void ex1() {
  print('\n[1] Operações com dois números');
  stdout.write('Digite o primeiro número: ');
  final a = readDouble();
  stdout.write('Digite o segundo número: ');
  final b = readDouble();

  final soma = a + b;
  final sub = a - b;
  final mult = a * b;
  final div = (b != 0) ? (a / b) : double.nan;

  print('Soma: $soma');
  print('Subtração: $sub');
  print('Multiplicação: $mult');
  print('Divisão: ${b != 0 ? div : "Divisão por zero não é permitida"}');
}

void ex2() {
  print('\n[2] Média de três notas');
  stdout.write('Nota 1: ');
  final n1 = readDouble();
  stdout.write('Nota 2: ');
  final n2 = readDouble();
  stdout.write('Nota 3: ');
  final n3 = readDouble();

  final media = (n1 + n2 + n3) / 3.0;
  print('Média: ${media.toStringAsFixed(2)}');
  print(media >= 7 ? 'Aluno aprovado ✅' : 'Aluno reprovado ❌');
}

void ex3() {
  print('\n[3] Celsius → Fahrenheit');
  stdout.write('Temperatura em °C: ');
  final c = readDouble();
  final f = c * 9 / 5 + 32;
  print('$c °C = ${f.toStringAsFixed(2)} °F');
}

void ex4() {
  print('\n[4] Positivo, negativo ou zero');
  stdout.write('Digite um número: ');
  final n = readDouble();
  if (n > 0) {
    print('Positivo');
  } else if (n < 0) {
    print('Negativo');
  } else {
    print('Zero');
  }
}

void ex5() {
  print('\n[5] Menor ou maior de idade');
  stdout.write('Digite sua idade: ');
  final idade = readInt();
  print(idade >= 18 ? 'Maior de idade' : 'Menor de idade');
}

void ex6() {
  print('\n[6] Verificar se ano é bissexto');
  stdout.write('Ano: ');
  final ano = readInt();
  final bissexto = (ano % 4 == 0) && ((ano % 100 != 0) || (ano % 400 == 0));
  print(bissexto ? 'Bissexto' : 'Não é bissexto');
}

void ex7() {
  print('\n[7] Somar números (digite 0 para encerrar)');
  double soma = 0;
  while (true) {
    stdout.write('Número: ');
    final n = readDouble();
    if (n == 0) break;
    soma += n;
  }
  print('Soma total: $soma');
}

void ex8() {
  print('\n[8] Contador de 1 a 10 (while)');
  var i = 1;
  while (i <= 10) {
    stdout.write('$i ');
    i++;
  }
  print('');
}

void ex9() {
  print('\n[9] Tabuada (1 a 10)');
  stdout.write('Digite o número da tabuada: ');
  final n = readInt();
  for (var i = 1; i <= 10; i++) {
    print('$n x $i = ${n * i}');
  }
}

void ex10() {
  print('\n[10] Fatorial');
  stdout.write('Digite um número inteiro não-negativo: ');
  var n = readInt();
  if (n < 0) {
    print('Número negativo não possui fatorial definido.');
    return;
  }
  var fat = 1;
  for (var i = 2; i <= n; i++) {
    fat *= i;
  }
  print('$n! = $fat');
}

// 11) Média de Números
void ex11() {
  print('\n[11] Média de Números em Lista');
  List<int> numeros = [8, 10, 6, 7, 9];
  double media = numeros.reduce((a, b) => a + b) / numeros.length;
  print('Números: $numeros');
  print('Média: ${media.toStringAsFixed(2)}');
}

// 12) Adicionar e Remover Alunos
void ex12() {
  print('\n[12] Adicionar e Remover Alunos');
  List<String> alunos = ['Ana', 'Carlos', 'Beatriz'];
  alunos.addAll(['Eduardo', 'Fernanda']);
  alunos.remove('Carlos');
  print('Lista final de alunos: $alunos');
}

// 13) Verificação e Ordenação de Lista
void ex13() {
  print('\n[13] Verificação e Ordenação');
  List<int> numeros = [14, 7, 3, 10, 2, 8];
  bool contem10 = numeros.contains(10);
  numeros.sort();
  print('Contém número 10? ${contem10 ? "Sim" : "Não"}');
  print('Lista ordenada: $numeros');
}

// 14) Simulação de Carrinho de Compras
void ex14() {
  print('\n[14] Simulação de Carrinho de Compras');
  List<String> carrinho = [];
  carrinho.addAll(['Arroz', 'Feijão', 'Macarrão']);
  carrinho.remove('Feijão');
  print('Quantidade de itens: ${carrinho.length}');
  print('Itens no carrinho: $carrinho');
}

// 15) Combinação de Listas
void ex15() {
  print('\n[15] Combinação de Listas sem Duplicatas');
  List<int> lista1 = [1, 2, 3, 4];
  List<int> lista2 = [3, 4, 5, 6];
  List<int> combinada = [...lista1, ...lista2].toSet().toList();
  combinada.sort();
  print('Lista combinada sem duplicatas: $combinada');
}
