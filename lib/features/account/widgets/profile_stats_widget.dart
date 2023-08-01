import 'package:flutter/material.dart';
import 'package:zero_waste/utils/config/res.dart';

class ProfileStats extends StatelessWidget {
  final int num;
  final String category;
  const ProfileStats({super.key, required this.category, this.num = 0});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          num.toString(),
          style: TextStyle(
            color: Resources.color.white,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          category,
          style: TextStyle(
            color: Resources.color.white,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
