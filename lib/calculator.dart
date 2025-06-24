class Calculator {
  static int add(String numbers) {
    /// step 1.1 Input: “”, Output: 0
    // if (numbers.isEmpty) return 0;
    // return 0;

    ///step1.2 Input: “1”, Output: 1
    // if (numbers.isEmpty) return 0;
    // return int.parse(numbers);

    ///setp1.3 Input:"1,2", Output:1+2=3
    if (numbers.contains(',')) {
      List<String> parts = numbers.split(',');
      return parts.map(int.parse).reduce((a, b) => a + b);
    }
    return 0;
  }
}
