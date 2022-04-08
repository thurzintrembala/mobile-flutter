main() {
  Pessoa p1 = Pessoa("Fp do trembala", 230);
  Pessoa p2 = Pessoa("Erke", 21);
  Pessoa p3 = Pessoa("Isa", 20);
  Pessoa p4 = Pessoa("Jegao", 30);
  Pessoa p5 = Pessoa("Arthuairo", 22);

  final listapessoas = [p1, p2, p3, p4, p5];

  for (Pessoa p in listapessoas) {
    print(p.dadosPessoa());
  }
}

class Pessoa {
  String name;
  int years;

  Pessoa(this.name, this.years);

  String dadosPessoa() {
    return "$name - $years anos";
  }
}
