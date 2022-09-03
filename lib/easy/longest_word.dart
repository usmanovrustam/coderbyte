String longestWord(String sen) {
  final senList = sen.split(RegExp('[^A-za-z]'));
  senList.sort((a, b) => b.length - a.length);

  return senList.first;
}
