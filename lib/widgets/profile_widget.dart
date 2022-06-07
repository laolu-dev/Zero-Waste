import 'package:flutter/material.dart';
import 'package:zero_waste/constants/constant.dart';

Column userPopularity(int num, String category) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(num.toString(), style: buttonTextStyleTwo),
      Text(category, style: buttonTextStyleTwo),
    ],
  );
}

ElevatedButton profileButtons(String buttonText, bool canSavePost) {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      primary:
          canSavePost ? const Color.fromRGBO(233, 233, 233, 1) : primaryColor,
      textStyle: buttonTextStyleTwo,
    ),
    child: Text(
      buttonText,
    ),
  );
}
