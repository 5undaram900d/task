import 'dart:math';

void main() {
  var num1 = 12345;
  List<int> digits = num1.toString().split('').map(int.parse).toList();

  var result = pow(digits[0], digits[1]);
  if (digits.length % 2 == 0) {
    for (int i = 2; i < digits.length; i += 2) {
      int base = digits[i];
      int exponent = digits[i + 1];
      result *= pow(base, exponent);
    }
  } else {
    for (int i = 2; i < digits.length - 1; i += 2) {
      int base = digits[i];
      int exponent = digits[i + 1];
      result *= pow(base, exponent);
    }
  }

  print('$num1 = ${result}');
}
