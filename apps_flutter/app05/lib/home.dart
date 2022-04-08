import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController input1 = TextEditingController();
  TextEditingController input2 = TextEditingController();

  String mensagem = "Classificação";

  void _calcularImc() {
    setState(() {
      double p1 = double.parse(input1.text);
      double p2 = double.parse(input2.text);

      double imc = p1 / (p2 * p2);

      if (imc < 18.5) mensagem = 'Abaixo do peso!: $imc';
      if (imc > 18.5) mensagem = 'Peso normal: $imc';
      if (imc > 25.0) mensagem = 'Sobrepeso!: $imc';
      if (imc > 29.9) mensagem = 'Obesidade grau I: $imc';
      if (imc > 34.9) mensagem = 'Obesidade grau II: $imc';
      if (imc > 39.9) mensagem = 'Obesidade grau III ou Mórbida: $imc';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _titulo(),
      backgroundColor: Colors.white,
      body: _corpo(),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("Calculadora IMC"),
      centerTitle: true,
      backgroundColor: Colors.blue,
    );
  }

  _corpo() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _foto(),
          _campo("Peso", input1),
          _campo("Altura", input2),
          _botao(),
          _texto(mensagem),
        ],
      ),
    );
  }

  _campo(labelTitulo, objController) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: labelTitulo, labelStyle: TextStyle(color: Colors.green)),
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.green, fontSize: 25.0),
      controller: objController,
    );
  }

  _botao() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Container(
        height: 50.0,
        child: RaisedButton(
          onPressed: _calcularImc,
          child: Text("Calcular",
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
          color: Colors.blue,
        ),
      ),
    );
  }

  _texto(textoExibir) {
    return Text(
      textoExibir,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.lightBlue, fontSize: 25.0),
    );
  }

  _foto() {
    return Center(
      child: Image.network(
        'https://thumbs.dreamstime.com/b/ilustra%C3%A7%C3%A3o-do-vetor-infogr%C3%A1fico-de-%C3%ADndice-massa-corporal-imc-com-silhueta-mulher-normal-ao-obeso-perda-ou-ganho-peso-corpo-bmi-158799765.jpg',
        height: 200,
        width: 200,
      ),
    );
  }
}
