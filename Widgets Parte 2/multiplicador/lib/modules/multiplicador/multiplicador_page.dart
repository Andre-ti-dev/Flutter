import 'package:flutter/material.dart';

class MultiplicadorPage extends StatefulWidget {
  MultiplicadorPage({Key? key}) : super(key: key);

  @override
  State<MultiplicadorPage> createState() => _MultiplicadorPageState();
}

class _MultiplicadorPageState extends State<MultiplicadorPage> {
  TextEditingController n1Controller = TextEditingController();
  TextEditingController n2Controller = TextEditingController();

  String result = "Informe os números";

  void _multiplyNumbers() {
    setState(() {
      double n1 = double.parse(n1Controller.text);
      double n2 = double.parse(n2Controller.text);

      double resultado = n1 * n2;

      result = 'Resultado: $resultado';
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
        "Multiplicador de Números",
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
          _numberInput("Digite o 1° número", n1Controller),
          _numberInput("Digite o 2° número", n2Controller),
          _button(),
          _result(result),
        ],
      ),
    );
  }

  _result(value) {
    return Text(
      value,
      textAlign: TextAlign.center,
      style: const TextStyle(color: Colors.green, fontSize: 25.0),
    );
  }

  _numberInput(label, controller) {
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
          child: const Text("Calcular",
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
          color: Colors.blue,
        ),
      ),
    );
  }
}
