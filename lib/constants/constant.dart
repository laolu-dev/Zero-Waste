import 'package:flutter/material.dart';

String appImage = "images/app_image.svg";

const inputWhite = Color.fromRGBO(252, 252, 252, 1);

const hintColor = Color.fromRGBO(151, 151, 151, 1);

TextStyle textStyleOne = const TextStyle(
    color: Color.fromARGB(255, 0, 0, 0),
    fontSize: 24,
    fontWeight: FontWeight.w700);

Container inputContainer({required Widget child, Color? color}) {
  return Container(
    color: color,
    height: 52,
    padding: const EdgeInsets.only(top: 16, bottom: 16, left: 22),
    child: child,
  );
}

Color colorGreen = const Color.fromRGBO(10, 157, 86, 1);

Color lineColor = const Color.fromRGBO(22, 22, 29, 1);

InputDecoration inputDecoration(
    {required String hintText, required String labelText}) {
  return InputDecoration(
    labelStyle: const TextStyle(
        fontSize: 14, fontWeight: FontWeight.w400, color: hintColor),
    hintText: hintText,
    labelText: labelText,
    border: InputBorder.none,
  );
}

circleContainer({required Widget child, Color? color}) {
  return Container(
    color: color,
    width: 55,
    height: 55,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
    child: child,
  );
}
