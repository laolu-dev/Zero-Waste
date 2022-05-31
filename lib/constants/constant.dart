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

TextStyle socntwkStyle() {
  return const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(77, 77, 77, 1));
}

TextStyle forgtpwdStyle() {
  return TextStyle(
      color: colorGreen, fontSize: 14, fontWeight: FontWeight.w400);
}

TextStyle btntxtStyle() {
  return const TextStyle(
      fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white);
}

TextStyle havAcc() {
  return const TextStyle(
      fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black);
}

TextStyle orStyle() {
  return const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Color.fromRGBO(22, 22, 29, 1));
}

Container inputContainer(
    {required Widget child, Color? color, required Color borderColor}) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color,
        border: Border.all(color: borderColor)),
    constraints: const BoxConstraints(
      maxWidth: 400,
      maxHeight: 52,
    ),
    child: child,
  );
}

Color colorGreen = const Color.fromRGBO(10, 157, 86, 1);

Color lineColor = const Color.fromRGBO(229, 229, 229, 1);

InputDecoration inputDecoration({required String labelText}) {
  return InputDecoration(
      labelStyle: const TextStyle(
          fontSize: 14, fontWeight: FontWeight.w400, color: hintColor),
      labelText: labelText,
      contentPadding: const EdgeInsets.only(left: 22, top: 5),
      border: InputBorder.none);
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
