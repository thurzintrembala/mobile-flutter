void main() {
  var arrayOfNumber = [52, 12, 43, 67];
  int sum = 0;
  for (var item in arrayOfNumber) {
    sum += item;    
  }
  print("A média é: ${sum / arrayOfNumber.length}");
}