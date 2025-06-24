import 'package:calculator_app/calculator.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  group("calculator", ()
  {
    /// step 1.1 Input: “”, Output: 0
    // test('return 0 for empty string', () {
    //   expect(Calculator.add(""), 0);
    // });

    ///step1.2 Input: “1”, Output: 1
    test('returns the number itself', () {
      expect(Calculator.add("4"), 4);
    });
  });
}