main() {
  Pessoa p1 = Pessoa("Fp do Trembala", 20, "M");
  Pessoa p2 = Pessoa("Isa", 19, "F");
  Pessoa p3 = Pessoa("Erik", 21, "M");
  Pessoa p4 = Pessoa("thurzin", 22, "M");
  Pessoa p5 = Pessoa("Jegao", 29, "M");

  final listapessoas = [p1, p2, p3, p4, p5];

  for (Pessoa p in listapessoas) {
    if (p.sexo == "F") {
      print(p.dadosPessoa());
    }
  }
}

class Pessoa {
  String nome;
  int idade;
  String sexo;

  Pessoa(this.nome, this.idade, this.sexo);

  String dadosPessoa() {
    return "Nome: $nome | Idade: $idade | Sexo: $sexo";
  }
}
