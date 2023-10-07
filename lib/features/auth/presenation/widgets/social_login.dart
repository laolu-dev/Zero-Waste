import 'package:flutter/material.dart';

import 'package:zero_waste/core/constants/constants.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key});

  Container _login(Widget child) {
    return Container(
        width: 55,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
        ),
        child: child);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {},
          child: _login(Image.asset(AppConstants.facebook)),
        ),
        const SizedBox(width: 12),
        GestureDetector(
          onTap: () {},
          child: _login(Image.asset(AppConstants.google)),
        ),
        const SizedBox(width: 12),
        GestureDetector(
          onTap: () {},
          child: _login(Image.asset(AppConstants.linkedIn)),
        ),
      ],
    );
  }
}
