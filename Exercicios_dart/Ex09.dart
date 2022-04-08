void main() {
  double peso = 65;
  double altura = 1.80;
  String sexo = "F";
  int baseNum = 19;
  double pesoIdeal = peso / (altura * altura);
  if(sexo == "M")
    baseNum++;

  int baseNumPlus = baseNum + 5;
  if(pesoIdeal < baseNum)
    print("Abaixo do Peso");
  if(pesoIdeal >= baseNum && pesoIdeal < baseNumPlus)
    print("Peso na média");
  if(pesoIdeal > baseNumPlus)
    print("Acima do peso");
  
}