int firstFactorial(int num) {
  int result = 1;
  for (int index = 1; index <= num; index++) {
    result = result * index;
  }
  return result;
}
