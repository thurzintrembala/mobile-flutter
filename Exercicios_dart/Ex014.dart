int berg(int n) {
  return (n < 3) ? 1 : berg(n - 1) + berg(n - 2) + berg(n - 3);
}

void main(List<String> args) {
  double f = 30;
  for (var i = 0; i < f; i++) {
    print(berg(i));
  }  
}