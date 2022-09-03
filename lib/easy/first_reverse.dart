String firstReverse(String str) {
  List<String> reverserdString = [];
  for (var index = 0; index < str.length; index++) {
    reverserdString.add(str[index]);
  }

  return reverserdString.reversed.join("");
}
