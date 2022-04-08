import 'package:flutter/material.dart';

class AlcoolGasolinaPage extends StatefulWidget {
  AlcoolGasolinaPage({Key? key}) : super(key: key);

  @override
  State<AlcoolGasolinaPage> createState() => _AlcoolGasolinaPageState();
}

class _AlcoolGasolinaPageState extends State<AlcoolGasolinaPage> {
  TextEditingController alcoolController = TextEditingController();
  TextEditingController gasolinaController = TextEditingController();

  String resultText = "";

  void _multiplyNumbers() {
    setState(() {
      double alcool = double.parse(alcoolController.text);
      double gasolina = double.parse(gasolinaController.text);

      double result = alcool / gasolina;

      resultText = result <= 0.7 ? "Alcool" : "Gasolina";
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
        "Alcool ou Gasolina",
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
          _input("Preço do Alcool", alcoolController),
          _input("Preço da Gasolina", gasolinaController),
          _button(),
          _result(resultText),
        ],
      ),
    );
  }

  _image() {
    return Center(
      child: Image.network(
        'https://media.istockphoto.com/photos/woman-pumping-gasoline-fuel-in-car-at-gas-station-picture-id1314135899',
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
