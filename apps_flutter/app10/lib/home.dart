import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String De = 'De';
  String Para = 'Para';
  String Resposta = "";
  double convert = 0;

  double v1 = 0;
  double v2 = 0;

  TextEditingController input1 = TextEditingController();

  void _ExibirTexto() {
    v1 = double.parse(input1.text);

    setState(() {
      if (De == 'Dólar' && Para == 'Real') {
        convert = v1 * 4.66;
      } else if (De == 'Dólar' && Para == 'Euro') {
        convert = v1 * 0.91;
      } else if (De == 'Dólar' && Para == 'Dólar') {
        convert = v1;
      } else if (De == 'Real' && Para == 'Dólar') {
        convert = v1 * 0.21;
      } else if (De == 'Real' && Para == 'Euro') {
        convert = v1 * 0.19;
      } else if (De == 'Real' && Para == 'Real') {
        convert = v1;
      } else if (De == 'Euro' && Para == 'Real') {
        convert = v1 * 5.15;
      } else if (De == 'Euro' && Para == 'Dólar') {
        convert = v1 * 1.10;
      } else if (De == 'Euro' && Para == 'Euro') {
        convert = v1;
      }
      Resposta = "Conversão: $convert";
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
      title: Text("CONERVSOR DE MOEDA"),
      centerTitle: true,
      backgroundColor: Colors.purpleAccent,
    );
  }

  _corpo() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          //_imagem(),
          _campo("Valor:", input1),
          _dropdownDe(),
          _dropdownPara(),
          _botao(),
          _Resposta(Resposta),
        ],
      ),
    );
  }

  _campo(labelTitulo, objController) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: labelTitulo, labelStyle: TextStyle(color: Colors.black)),
      textAlign: TextAlign.left,
      style: TextStyle(color: Colors.black, fontSize: 20.0),
      controller: objController,
    );
  }

  _dropdownDe() {
    return DropdownButton<String>(
      value: De,
      items: <String>['De', 'Dólar', 'Real', 'Euro'].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? valorSelecionado) {
        setState(() {
          De = valorSelecionado!;
        });
      },
    );
  }

  _dropdownPara() {
    return DropdownButton<String>(
      value: Para,
      items: <String>['Para', 'Dólar', 'Real', 'Euro'].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? valorSelecionado) {
        setState(() {
          Para = valorSelecionado!;
        });
      },
    );
  }

  _botao() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Container(
        height: 50.0,
        child: RaisedButton(
          onPressed: _ExibirTexto,
          child: Text("Converter",
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
          color: Colors.purpleAccent,
        ),
      ),
    );
  }

  _Resposta(Resposta) {
    return Text(
      Resposta,
      textAlign: TextAlign.left,
      style: TextStyle(color: Colors.black, fontSize: 25.0),
    );
  }
}
