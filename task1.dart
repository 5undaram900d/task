void main() {
  int i = 1;

  while (i <= 11) {
    if (i < 11) {
      print(i++);
      if (i == 10) {
        for (; i >= 1; i--) {
          print(i);
        }
      }
    } else {
      print(i--);
    }
  }
}
