import 'package:flutter/material.dart';

import '../constants/constant.dart';

class ThemeHelper {
  BorderRadius textFieldBorderRadius = const BorderRadius.only(
    topLeft: Radius.circular(5.0),
    topRight: Radius.circular(5.0),
    bottomLeft: Radius.circular(20.0),
    bottomRight: Radius.circular(20.0),
  );
  InputBorder textFieldBorder = const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(5.0),
        topRight: Radius.circular(5.0),
        bottomLeft: Radius.circular(20.0),
        bottomRight: Radius.circular(20.0),
      ));
  InputDecoration textFieldInputDecoration(
          [String labelText = '', String hintText = '']) =>
      InputDecoration(
        labelText: labelText,
        hintText: hintText,
        fillColor: Colors.green,
        border: textFieldBorder,
        focusedBorder: textFieldBorder,
        errorBorder: textFieldBorder,
        enabledBorder: textFieldBorder,
        disabledBorder: textFieldBorder,
      );

  ButtonStyle buttonStyle(double buttonSize, double buttonRadius,
      [Color? color]) {
    return ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(buttonRadius),
        ),
      ),
      minimumSize: MaterialStateProperty.all(Size(buttonSize, buttonSize)),
      backgroundColor: MaterialStateProperty.all(color ?? primary),
      shadowColor: MaterialStateProperty.all(Colors.transparent),
    );
  }
}
