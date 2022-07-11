import 'package:app_calculadora/widgets/buttons.dart';
import 'package:app_calculadora/widgets/buttons.dart';
import 'package:app_calculadora/widgets/tela.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        fontFamily: 'Georgia',
      ),
    ),
  );
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int numero = 0;

  void passandoNumero(int x) {
    setState(() {
      numero = x;
    });
    print(x);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF363636),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Tela(numero),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Buttons(numero, passandoNumero),
          ],
        ),
      ),
    );
  }
}
