String minWindowSubstring(List strArr) {
  var words = <String>[];
  var letters = strArr[1];
  var sentence = strArr[0].codeUnits;
  for (var i = 0; i < sentence.length; i++) {
    var search = List.from(letters.codeUnits);
    var total = <int>[];
    bool allFound = false;
    if (search.contains(sentence[i])) {
      total.add(sentence[i]);
      search.remove(sentence[i]);
      if (search.isNotEmpty) {
        for (var j = i + 1; j < sentence.length; j++) {
          if (search.contains(sentence[j])) {
            search.remove(sentence[j]);
          }

          total.add(sentence[j]);

          if (search.isEmpty) {
            allFound = true;
            break;
          }
        }
      } else {
        allFound = true;
      }
      if (allFound) {
        words.add(String.fromCharCodes(total));
      }
    }
  }
  var index = 0;
  num min = double.infinity;
  for (var i = 0; i < words.length; i++) {
    if (words[i].length < min) {
      min = words[i].length;
      index = i;
    }
  }

  return words[index];
}
