import 'package:flutter/material.dart';
import 'package:zero_waste/constants/constant.dart';

TextField userInput(String label, bool isPasswordField, bool isPhone) {
  return TextField(
    keyboardType: isPhone ? TextInputType.phone : TextInputType.text,
    cursorColor: hintColor,
    obscureText: isPasswordField,
    decoration: InputDecoration(
      suffixIcon: const Icon(Icons.visibility_off),
      contentPadding: const EdgeInsets.only(left: 25),
      labelStyle: labelTextStyle,
      labelText: label,
      border: const OutlineInputBorder(
        borderSide:
            BorderSide(color: Color.fromRGBO(226, 226, 226, 1), width: 10),
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: colorGreen),
        borderRadius: const BorderRadius.all(Radius.circular(12.0)),
      ),
    ),
  );
}
