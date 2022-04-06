import 'package:flutter/material.dart';
import 'package:hello/modules/hello/hello_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Hello',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HelloPage(),
    );
  }
}
