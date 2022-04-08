void main() {
  int valor = 5;
  int valorB = 25;
  
  if(valor < valorB) {
    for (var i = valorB; i > 10; i--) {
      print("$valor * $i = ${valor * i }");
    }
  } else {
    print("O valor B deve ser maior que o valor A");
  }
  
}