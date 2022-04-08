void main() {
  double peso = 58;
  double altura = 1.7;
  double pesoIdeal = (peso / altura * altura);

  if(pesoIdeal == peso)
    print("Você está no peso ideal");
  else 
    print("Você não está no peso ideal");
}