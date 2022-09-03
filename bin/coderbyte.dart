import 'package:coderbyte/easy/first_reverse.dart' as first_reverse;
import 'package:coderbyte/easy/longest_word.dart' as longest_word;
import 'package:coderbyte/easy/first_factorial.dart' as first_factorial;
import 'package:coderbyte/medium/min_window_substring.dart'
    as min_window_substring;

void main(List<String> arguments) {
  print("Fist reverse: ${first_reverse.firstReverse("Coderbyte")}");
  print("Longest word: ${longest_word.longestWord("I Love You")}");
  print("First Factorial: ${first_factorial.firstFactorial(3)}");
  print("Min Window Substring: ${min_window_substring.minWindowSubstring(
    ["ahffaksfajeeubsne", "jefaa"],
  )}");
}
