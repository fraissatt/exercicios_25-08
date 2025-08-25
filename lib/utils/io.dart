import 'dart:io';

int readInt() {
  while (true) {
    final input = stdin.readLineSync();
    if (input != null) {
      final value = int.tryParse(input.trim());
      if (value != null) return value;
    }
    stdout.write('Entrada inválida. Digite um número inteiro: ');
  }
}

double readDouble() {
  while (true) {
    final input = stdin.readLineSync();
    if (input != null) {
      final value = double.tryParse(input.trim().replaceAll(',', '.'));
      if (value != null) return value;
    }
    stdout.write('Entrada inválida. Digite um número (aceita . ou ,): ');
  }
}
