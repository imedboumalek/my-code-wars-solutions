import 'package:test/test.dart';

bool xo(String str) {
  final xReg = RegExp('[x]', caseSensitive: false);
  final oReg = RegExp('[o]', caseSensitive: false);

  return xReg.allMatches(str).length == oReg.allMatches(str).length;
}

void main() {
  group('Fixed tests', () {
    test('Testing for xo', () {
      expect(xo('xo'), equals(true));
    });
    test('Testing for XO', () {
      expect(xo('XO'), equals(true));
    });
    test('Testing for xo0', () {
      expect(xo('xo0'), equals(true));
    });
    test('Testing for xxxoo', () {
      expect(xo('xxxoo'), equals(false));
    });
    test('Testing for xxOo', () {
      expect(xo('xxOo'), equals(true));
    });
    test('Testing for empty string', () {
      expect(xo(''), equals(true));
    });
    test('Testing for xxxxxoooxooo', () {
      expect(xo('xxxxxoooxooo'), equals(true));
    });
    test('Testing for xxxm', () {
      expect(xo('xxxm'), equals(false));
    });
    test('Testing for ooom', () {
      expect(xo('ooom'), equals(false));
    });
    test('Testing for Oo', () {
      expect(xo('Oo'), equals(false));
    });
    test('Testing for abcdefghijklmnopqrstuvwxyz', () {
      expect(xo('abcdefghijklmnopqrstuvwxyz'), equals(true));
    });
  });
}
