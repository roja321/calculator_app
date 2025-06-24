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
    // test('returns the number itself', () {
    //   expect(Calculator.add("4"), 4);
    // });

    ///setp1.3 Input:"1,2", Output:1+2=3
    // test('returns sum of two numbers', () {
    //     expect(Calculator.add("1,2"), 3);
    //   });

    ///handle new lines between numbers
    // test('handle new lines between numbers', () {
    //   expect(Calculator.add("1\n2,3"), 6);
    // });

    //Throws exception for negative no.
    test('throws exception for negative no.', () {
      expect(Calculator.add("1,-2,3"),
          throwsA(isA<ArgumentError>())
      );
    });
  });
}