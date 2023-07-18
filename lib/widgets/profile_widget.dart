import 'package:flutter/material.dart';
import '../constants/constant.dart';

Column userPopularity(String num, String category) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(num,
          style: buttonTextStyleTwo.copyWith(
              fontSize: 14, fontWeight: FontWeight.w700)),
      Text(category,
          style: buttonTextStyleTwo.copyWith(
              fontSize: 14, fontWeight: FontWeight.w700)),
    ],
  );
}
