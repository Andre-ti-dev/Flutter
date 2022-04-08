import 'package:flutter/material.dart';

class IMCPage extends StatefulWidget {
  IMCPage({Key? key}) : super(key: key);

  @override
  State<IMCPage> createState() => _IMCPageState();
}

class _IMCPageState extends State<IMCPage> {
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();

  String resultText = "";

  void _multiplyNumbers() {
    setState(() {
      double peso = double.parse(pesoController.text);
      double altura = double.parse(alturaController.text);

      double result = peso / (altura * 2);

      if (result < 18.5) resultText = "Abaixo do Peso";
      if (result >= 18.5 && result < 25) resultText = "Peso Normal";
      if (result >= 25 && result < 30) resultText = "Sobrepeso";
      if (result >= 30 && result < 35) resultText = "Obesidade Grau I";
      if (result >= 35 && result < 40) resultText = "Obesidade Grau II";
      if (result >= 40) resultText = "Obesidade Grau III ou Mórbida";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      backgroundColor: Colors.white,
      body: _body(),
    );
  }

  _appBar() {
    return AppBar(
      title: const Text(
        "Cálculo do IMC",
        style: TextStyle(color: Colors.orange),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
    );
  }

  _body() {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
      child: Column(
        children: [
          _image(),
          _input("Peso", pesoController),
          _input("Altura", alturaController),
          _button(),
          _result(resultText),
        ],
      ),
    );
  }

  _image() {
    return Center(
      child: Image.network(
        'https://images.unsplash.com/photo-1522844990619-4951c40f7eda?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
        height: 150,
        width: 150,
      ),
    );
  }

  _input(label, controller) {
    return Container(
      margin: const EdgeInsets.only(top: 24.0),
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 4),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            labelText: label, labelStyle: const TextStyle(color: Colors.black)),
        textAlign: TextAlign.center,
        style: const TextStyle(color: Colors.black, fontSize: 25.0),
        controller: controller,
      ),
    );
  }

  _button() {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: SizedBox(
        height: 50.0,
        width: double.infinity,
        child: RaisedButton(
          onPressed: _multiplyNumbers,
          child: const Text("Verificar",
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
          color: Colors.green,
        ),
      ),
    );
  }

  _result(value) {
    return Text(
      value,
      textAlign: TextAlign.center,
      style: const TextStyle(color: Colors.red, fontSize: 25.0),
    );
  }
}
