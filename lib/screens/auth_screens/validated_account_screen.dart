import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zero_waste/constants/constant.dart';
import 'package:zero_waste/screens/profile_screen.dart';

class AccountValidScreen extends StatelessWidget {
  const AccountValidScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(accValidSvg),
              const SizedBox(height: 57.5),
              Container(
                height: 52,
                constraints: const BoxConstraints(maxWidth: 327),
                child: ElevatedButton(
                  onPressed: () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context) => const UserAccount())),
                  style: elevatedButtonStyleTwo,
                  child: const Text("Proceed"),
                ),
              ),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
