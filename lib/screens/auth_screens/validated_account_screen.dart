import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zero_waste/constants/constant.dart';

class AccountValidScreen extends StatelessWidget {
  const AccountValidScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
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
                  onPressed: () {},
                  style: elevatedButtonStyleTwo,
                  child: const Text("Proceed"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
