import 'package:test/test.dart';

bool isUpperCase(String str) {
  return !str.contains(RegExp('[a-z]'));
}

void main() {
  group('Fixed tests', () {
    test('Testing for c', () => expect(isUpperCase('c'), equals(false)));
    test('Testing for C', () => expect(isUpperCase('C'), equals(true)));
    test('Testing for hello I AM DONALD',
        () => expect(isUpperCase('hello I AM DONALD'), equals(false)));
    test('Testing for HELLO I AM DONALD',
        () => expect(isUpperCase('HELLO I AM DONALD'), equals(true)));
    test('Testing for ACSKLDFJSgSKLDFJSKLDFJ',
        () => expect(isUpperCase('ACSKLDFJSgSKLDFJSKLDFJ'), equals(false)));
    test('Testing for ACSKLDFJSGSKLDFJSKLDFJ',
        () => expect(isUpperCase('ACSKLDFJSGSKLDFJSKLDFJ'), equals(true)));
  });
}
