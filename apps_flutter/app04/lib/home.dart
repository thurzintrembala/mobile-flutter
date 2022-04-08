import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController input1 = TextEditingController();
  TextEditingController input2 = TextEditingController();

  String infoResultado = "Informe os valores!";

  void _calcularDiferenca() {
    setState(() {
      double n1 = double.parse(input1.text);
      double n2 = double.parse(input2.text);

      double resultado = n1 / n2;

      if (resultado > 0.7) {
        infoResultado = 'A Gasolina compensa mais!';
      } else {
        infoResultado = 'O Alcool compensa mais!';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _titulo(),
      backgroundColor: Colors.orange,
      body: _corpo(),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("Calcular Alcool Vs. Gasolina"),
      centerTitle: true,
      backgroundColor: Colors.lightBlue,
    );
  }

  _corpo() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _foto(),
          _campo("Preço do alcool", input1),
          _campo("Preço da gasolina", input2),
          _botao(),
          _texto(infoResultado),
        ],
      ),
    );
  }

  _campo(labelTitulo, objController) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: labelTitulo,
          labelStyle: TextStyle(color: Colors.deepPurple)),
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.deepPurple, fontSize: 25.0),
      controller: objController,
    );
  }

  _botao() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Container(
        height: 50.0,
        child: RaisedButton(
          onPressed: _calcularDiferenca,
          child: Text("Calcular",
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
          color: Colors.blue,
        ),
      ),
    );
  }

  _texto(textoParaExibir) {
    return Text(
      textoParaExibir,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.red, fontSize: 25.0),
    );
  }

  _foto() {
    return Center(
      child: Image.network(
        'https://static.vecteezy.com/system/resources/thumbnails/000/348/093/small/Electronic_Devices__28141_29.jpg',
        height: 150,
        width: 150,
      ),
    );
  }
}
