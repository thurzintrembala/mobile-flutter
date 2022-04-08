void main() {
  int baseNum = 1;
  int N = 95;

  for (var i = 1; i < N; i) {
    print("indice = $i");
    print("baseNumImpar = $baseNum");
    print(i);
    baseNum += 2;
    i += i + baseNum;
  }
}