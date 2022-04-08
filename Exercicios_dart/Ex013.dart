int fibo(int n) {
  return (n < 2) ? n : fibo(n - 1) + fibo(n - 2);
}

void main(List<String> args) {
  double f = 30;
  for (var i = 1; i < f; i++) {
    print(fibo(i));
  }  
}