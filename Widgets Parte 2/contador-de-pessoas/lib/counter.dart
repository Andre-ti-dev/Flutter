import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;

  void _changeCounterValue(bool isIncrement) {
    setState(() {
      isIncrement ? count++ : count--;
      if (count < 0) count = 0;
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
      title: Text("Contador de pessoas"),
      centerTitle: true,
      backgroundColor: Colors.green,
    );
  }

  _corpo() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        //crossAxisAlignment: CrossAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _texto(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _botao('+', 0xFF2E7D32, true),
              _botao('-', 0xFFC62828, false)
            ],
          )
        ],
      ),
    );
  }

  _botao(String simbol, int color, bool isIncrement) {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Container(
        height: 50.0,
        child: RaisedButton(
          onPressed: () => _changeCounterValue(isIncrement),
          child: Text(simbol,
              style: TextStyle(color: Colors.white, fontSize: 40.0)),
          color: Color(color),
        ),
      ),
    );
  }

  _texto() {
    return Container(
        width: 160,
        margin: const EdgeInsets.all(15.0),
        padding: const EdgeInsets.all(3.0),
        decoration:
            BoxDecoration(border: Border.all(color: Colors.black, width: 3)),
        child: Text(
          '$count',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.red, fontSize: 80.0),
        ));
  }
}
