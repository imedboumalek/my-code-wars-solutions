// See https://pub.dartlang.org/packages/test
import "dart:core";

import 'package:test/test.dart';

int getCount(String inputStr) {
  final vowels = <String>['a', 'e', 'i', 'o', 'u'];
  var count = 0;
  inputStr.split('').forEach((element) {
    if (vowels.contains(element)) count++;
  });

  return count;
}

void main() {
  test('Sample tests', () {
    expect(getCount('bcdfghjklmnpqrstvwxy'), equals(0));
    expect(getCount('abcde'), equals(2));
    expect(getCount('aeiou'), equals(5));
    expect(getCount('abracadabra'), equals(5));
  });
}
