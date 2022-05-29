import 'package:flutter/material.dart';

String appImage = "images/app_image.svg";
const inputWhite = Color.fromRGBO(252, 252, 252, 1);
TextStyle textStyleOne = const TextStyle(
  color: Color.fromRGBO(27, 27, 29, 1),
  fontSize: 24,
);

Container inputContainer({required Widget child, Color? color}) {
  return Container(
    color: color,
    height: 60,
    padding: const EdgeInsets.only(top: 8, bottom: 10, left: 16),
    child: child,
  );
}

Color colorGreen = const Color.fromARGB(255, 34, 151, 34);
Color lineColor = const Color.fromARGB(255, 44, 40, 40);
InputDecoration inputDecoration(
    {required String hintText, required String labelText}) {
  return InputDecoration(
      hintText: hintText, labelText: labelText, border: InputBorder.none);
}

circleContainer({required Widget child, Color? color}) {
  return Container(
    color: color,
    width: 50,
    height: 50,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
    child: child,
  );
}
