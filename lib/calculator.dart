class Calculator {
  static int add(String numbers) {
    /// step 1.1 Input: “”, Output: 0
    // if (numbers.isEmpty) return 0;
    // return 0;

    ///step1.2 Input: “1”, Output: 1
    if (numbers.isEmpty) return 0;
    return int.parse(numbers);
  }
}
