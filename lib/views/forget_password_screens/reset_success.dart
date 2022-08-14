import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zero_waste/widgets/app_button.dart';
import '../../constants/constant.dart';
import '../auth/login_screen.dart';

class ResetSuccess extends StatelessWidget {
  static const id = 'ResetSuccess';
  const ResetSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 123.5),
          child: Column(
            children: [
              SvgPicture.asset(successSvg),
              const SizedBox(height: 57.5),
              AppButton(
                btnName: 'Login',
                btn: () =>
                    Navigator.pushReplacementNamed(context, LoginScreen.id),
              )
            ],
          ),
        ),
      ),
    );
  }
}
