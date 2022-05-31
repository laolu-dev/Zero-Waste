import 'package:flutter/material.dart';

String appImage = "images/appImage.svg";

String fbSvg = "images/facebook.svg";

String googleSvg = "images/google.svg";

String linklnSvg = "images/linkln.svg";

const inputWhite = Color.fromRGBO(252, 252, 252, 1);

const hintColor = Color.fromRGBO(151, 151, 151, 1);

const inputBorderColor = Color.fromRGBO(226, 226, 226, 1);

TextStyle textStyleOne = const TextStyle(
    color: Color.fromARGB(255, 0, 0, 0),
    fontSize: 24,
    fontWeight: FontWeight.w700);

Container inputContainer({required Widget child, Color? color}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: color,
    ),
    constraints: const BoxConstraints(
      maxWidth: 400,
      minHeight: 52,
    ),
    child: child,
  );
}

Color colorGreen = const Color.fromRGBO(10, 157, 86, 1);

Color lineColor = const Color.fromRGBO(22, 22, 29, 1);

InputDecoration inputDecoration({required String labelText}) {
  return InputDecoration(
    labelStyle: const TextStyle(
        fontSize: 14, fontWeight: FontWeight.w400, color: hintColor),
    labelText: labelText,
    contentPadding: const EdgeInsets.only(top: 16, bottom: 16, left: 22),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: colorGreen),
    ),
    border: const OutlineInputBorder(
      borderSide: BorderSide(color: inputBorderColor),
    ),
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