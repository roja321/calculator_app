class Calculator {
  static int add(String numbers) {
    /// step 1.1 Input: “”, Output: 0
    // if (numbers.isEmpty) return 0;
    // return 0;

    ///step1.2 Input: “1”, Output: 1
    // if (numbers.isEmpty) return 0;
    // return int.parse(numbers);

    ///setp1.3 Input:"1,2", Output:1+2=3
    // if (numbers.contains(',')) {
    //   List<String> parts = numbers.split(',');
    //   return parts.map(int.parse).reduce((a, b) => a + b);
    // }
    // return 0;

    ///handle new lines between numbers
    //   String newNo = numbers.replaceAll('\n', ',');
    //   List<String> parts = newNo.split(',');
    //   return parts.map(int.parse).reduce((a, b) => a + b);

    List<int> nums = numbers
        .split(',')
        .where((s) => s.isNotEmpty)
        .map(int.parse)
        .toList();
    List<int> negativeNo = nums.where((n) => n < 0).toList();
    if (negativeNo.isNotEmpty) {
      throw ArgumentError('negative numbers not allowed ${negativeNo.join(', ')}');
    }
    return nums.fold(0, (sum, num) => sum + num);
  }
}
