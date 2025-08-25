import 'package:test/test.dart';

void main() {
  test('Ano bissexto válido', () {
    final ano = 2024;
    final isBissexto = (ano % 4 == 0) && ((ano % 100 != 0) || (ano % 400 == 0));
    expect(isBissexto, isTrue);
  });

  test('Ano não bissexto', () {
    final ano = 2023;
    final isBissexto = (ano % 4 == 0) && ((ano % 100 != 0) || (ano % 400 == 0));
    expect(isBissexto, isFalse);
  });
}
