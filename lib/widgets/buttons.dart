import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class Buttons extends StatelessWidget {
  Buttons(this.numero, this.passandoNumero, {Key? key}) : super(key: key);

  Function(int) passandoNumero;
  int numero;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 50, 0, 50),
      decoration: BoxDecoration(
        color: const Color(0xFF4F4F4F),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BuiderNumberButton("1", numeroDobotao: 1),
              SizedBox(
                width: 10,
              ),
              BuiderNumberButton("2", numeroDobotao: 2),
              SizedBox(
                width: 10,
              ),
              BuiderNumberButton("3", numeroDobotao: 3),
              SizedBox(
                width: 10,
              ),
              BuiderIconButton(Icon(Icons.close))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BuiderNumberButton("4", numeroDobotao: 4),
              SizedBox(
                width: 10,
              ),
              BuiderNumberButton("5", numeroDobotao: 5),
              SizedBox(
                width: 10,
              ),
              BuiderNumberButton("6", numeroDobotao: 6),
              SizedBox(
                width: 10,
              ),
              BuiderIconButton(Icon(Icons.remove)),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BuiderNumberButton("7", numeroDobotao: 7),
              SizedBox(
                width: 10,
              ),
              BuiderNumberButton("8", numeroDobotao: 8),
              SizedBox(
                width: 10,
              ),
              BuiderNumberButton("9", numeroDobotao: 9),
              SizedBox(
                width: 10,
              ),
              BuiderNumberButton("/", vertical: 24, horizontal: 41),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BuiderNumberButton("0"),
              SizedBox(
                width: 10,
              ),
              BuiderNumberButton(",", vertical: 25, horizontal: 40),
              SizedBox(
                width: 10,
              ),
              BuiderNumberButton("+", vertical: 25, horizontal: 35),
              SizedBox(
                width: 10,
              ),
              BuiderNumberButton("=", vertical: 25, horizontal: 36),
            ],
          ),
        ],
      ),
    );
  }

  Widget BuiderNumberButton(
    String text, {
    double vertical = 25,
    double horizontal = 35,
    int numeroDobotao = 0,
  }) {
    return ElevatedButton(
      onPressed: () {
        passandoNumero(numeroDobotao);
      },
      child: Text(text, style: const TextStyle(fontSize: 30)),
      style: ElevatedButton.styleFrom(
          primary: Color(0xFF808080),
          padding:
              EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
    );
  }
}

Widget BuiderIconButton(Icon icon,
    [double vertical = 31, double horizontal = 33]) {
  return ElevatedButton(
    onPressed: () {},
    child: icon,
    style: ElevatedButton.styleFrom(
      primary: Color(0xFF808080),
      padding: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    ),
  );
}
