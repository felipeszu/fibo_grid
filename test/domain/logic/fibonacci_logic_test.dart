import 'package:fibo_grid/domain/logic/fibonacci_logic.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late FibonacciLogic logic;

  setUp(() {
    logic = FibonacciLogic();
  });

  group('FibonacciLogic', () {
    test('isFibonacciSequence returns true for valid sequences', () {
      expect(logic.isFibonacciSequence([1, 1, 2, 3, 5]), isTrue);
      expect(logic.isFibonacciSequence([2, 3, 5, 8, 13]), isTrue);
      expect(logic.isFibonacciSequence([5, 8, 13, 21, 34, 55]), isTrue);
    });

    test('isFibonacciSequence works with reversed sequences', () {
      expect(logic.isFibonacciSequence([5, 3, 2, 1, 1]), isTrue);
      expect(logic.isFibonacciSequence([13, 8, 5, 3, 2]), isTrue);
    });

    test('isFibonacciSequence returns false for invalid sequences', () {
      expect(logic.isFibonacciSequence([1, 2, 3, 4, 5]), isFalse);
      expect(logic.isFibonacciSequence([1, 1, 2, 3, 6]), isFalse);
    });

    test('isFibonacciSequence respects minLength', () {
      expect(logic.isFibonacciSequence([1, 1, 2, 3], minLength: 5), isFalse);
      expect(logic.isFibonacciSequence([1, 1, 2, 3, 5], minLength: 5), isTrue);
    });
  });
}
