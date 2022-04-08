void main() {
  var arrayOfProducts = {
    "camisa":50,
    "calça": 45,
    "bone": 25,
    "tenis": 150,
    "meia": 10
    };

  double sum = 0;
  double payedValue = 542;
  arrayOfProducts.forEach((key, value) { sum += value; });
  print("O troco a ser recebido será  R\$${payedValue - sum}");
}