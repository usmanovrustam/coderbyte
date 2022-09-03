bool questionsMarks(String str) {
  var result = false;

  if (str.split('').where((e) => e == '?').length < 3) return false;

  List strL = str.split('');
  Map mappingInt = {};

  for (var i = 0; i < strL.length; i++) {
    if (int.tryParse(strL[i]) != null) {
      mappingInt[i] = strL[i];
    }
  }

  final mappingIntL = mappingInt.keys.toList();

  for (var i = 0; i < mappingIntL.length - 1; i++) {
    final subS = str.substring(mappingIntL[i], mappingIntL[i + 1]);
    if (subS.contains('?') &&
        subS.split('').where((e) => e == '?').length == 3) {
      result = true;
      break;
    }
  }

  // code goes here
  return result;
}
