import 'package:flutter/material.dart';

class WidgetHome extends StatelessWidget {
  const WidgetHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Hello"),
        centerTitle: true,
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(
      color: Colors.white,
      child: Center(
        child: _text(),
      ),
    );
  }

  _text() {
    return Text("Hello Turma!",
        style: TextStyle(
          fontSize: 30,
          color: Colors.blue,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          decoration: TextDecoration.underline,
          //decoration: TextDecoration.overline,
          decorationColor: Colors.red,
          decorationStyle: TextDecorationStyle.dashed,
        ));
  }
}
