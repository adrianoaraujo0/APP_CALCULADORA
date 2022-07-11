import 'package:flutter/material.dart';

class Tela extends StatelessWidget {
  Tela(this.numero, {Key? key}) : super(key: key);
  int numero;

  @override
  Widget build(BuildContext context) {
    return Text(
      numero.toString(),
      style: TextStyle(color: Colors.white, fontSize: 50),
    );
  }
}
