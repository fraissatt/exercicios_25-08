import 'dart:io';
import 'package:exercicios/exercicios.dart';
import 'package:exercicios/utils/io.dart';

void main() {
  while (true) {
    print('\n==================== MENU ====================');
    print(
      '1) Ler dois números e mostrar soma, subtração, multiplicação e divisão',
    );
    print('2) Média de três notas e aprovação (média >= 7)');
    print('3) Converter Celsius para Fahrenheit');
    print('4) Dizer se um número é positivo, negativo ou zero');
    print('5) Verificar se é menor ou maior de idade');
    print('6) Verificar se um ano é bissexto');
    print('7) Somar números até digitar 0');
    print('8) Contador de 1 até 10 (while)');
    print('9) Tabuada (1 a 10) de um número escolhido');
    print('10) Fatorial de um número');
    print('0) Sair');
    stdout.write('Escolha uma opção: ');

    final opcao = readInt(); // ← vem do utils/io.dart

    switch (opcao) {
      case 1:
        ex1(); // ← vem do exercicios.dart
        break;
      case 2:
        ex2();
        break;
      case 3:
        ex3();
        break;
      case 4:
        ex4();
        break;
      case 5:
        ex5();
        break;
      case 6:
        ex6();
        break;
      case 7:
        ex7();
        break;
      case 8:
        ex8();
        break;
      case 9:
        ex9();
        break;
      case 10:
        ex10();
        break;
      case 0:
        print('Saindo... Até mais!');
        return;
      default:
        print('Opção inválida.');
    }
  }
}
