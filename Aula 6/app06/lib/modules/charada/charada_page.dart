import 'dart:math';

import 'package:flutter/material.dart';

class CharadaPage extends StatefulWidget {
  CharadaPage({Key? key}) : super(key: key);

  @override
  State<CharadaPage> createState() => _CharadaPageState();
}

class _CharadaPageState extends State<CharadaPage> {
  int randomNumber = -1;

  void _generateNumber() {
    setState(() {
      randomNumber = Random().nextInt(11);
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
        "Jogo do N° Aleatório",
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
          _text(),
          _result(randomNumber),
          _button(),
        ],
      ),
    );
  }

  _image() {
    return Center(
      child: Image.network(
        'https://images.unsplash.com/photo-1599508704512-2f19efd1e35f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80',
        height: 150,
        width: 150,
      ),
    );
  }

  _text() {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20),
      child: Text(
        "Pense em um n° de 0 a 10",
        style: TextStyle(color: Colors.red, fontSize: 25.0),
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
          onPressed: _generateNumber,
          child: const Text("Verificar",
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
          color: Colors.green,
        ),
      ),
    );
  }

  _result(value) {
    return Text(
      "${value < 0 ? '' : value}",
      textAlign: TextAlign.center,
      style: const TextStyle(color: Colors.red, fontSize: 25.0),
    );
  }
}
