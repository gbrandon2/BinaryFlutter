import 'package:flutter/material.dart';
import 'package:calculadora/widget/binadec.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Calculadora binario',
        home: Scaffold(
          appBar: AppBar(title: Text('Binary Converter')),
          body: Center(child: Binadec()),
        ));
  }
}
