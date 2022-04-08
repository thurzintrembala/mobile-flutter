void main() {
  double n1 = 10;
  double n2 = 12;
  double n3 = 8;
  
  if((n1+n2) > n3 || (n1+n3) > n2) {
    if(n1 != n2 && n1 != n3)
      print("escaleno");
    else if(n1 == n2 && n2 == n3) 
      print("equilatero");
    else 
      print("isósceles");
  }  
}