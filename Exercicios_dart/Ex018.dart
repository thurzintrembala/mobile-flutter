main() {
  final numeros = [5, 3, 8, 12, 35, 9, 2, 4, 6, 11];
  const multiplicador = 3;

  print("Vetor original: $numeros ");

  for (int j = 0; j < numeros.length; j++) {
    numeros[j] = numeros[j] * multiplicador;
  }
  print("Após multiplicar por $multiplicador = $numeros ");
}
