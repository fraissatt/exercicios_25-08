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
    print('11) Média de Números em Lista');
    print('12) Adicionar e Remover Alunos');
    print('13) Verificação e Ordenação de Lista');
    print('14) Simulação de Carrinho de Compras');
    print('15) Combinação de Listas sem Duplicatas');
    print('16) Agenda de Contatos');
    print('17) Cadastro de Produtos e Média de Preço');
    print('18) Atualização de Nota de Aluno');
    print('19) Remoção de Cidades do Mapa');
    print('20) Produtos com estoque > 5');
    print('0) Sair');
    stdout.write('Escolha uma opção: ');

    final opcao = readInt();

    switch (opcao) {
      case 1:
        ex1();
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
      case 11:
        ex11();
        break;
      case 12:
        ex12();
        break;
      case 13:
        ex13();
        break;
      case 14:
        ex14();
        break;
      case 15:
        ex15();
        break;
      case 16:
        ex16();
        break;
      case 17:
        ex17();
        break;
      case 18:
        ex18();
        break;
      case 19:
        ex19();
        break;
      case 20:
        ex20();
        break;
      case 0:
        print('Saindo...');
        return;
      default:
        print('Opção inválida.');
    }
  }
}
