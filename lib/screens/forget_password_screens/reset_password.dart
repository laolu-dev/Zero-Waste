import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './reset_success.dart';
import '../../constants/constant.dart';
import '../../widgets/text_field_widget.dart';

class ResetPassword extends StatelessWidget {
  ResetPassword({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 60),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(appImage),
                const SizedBox(height: 15),
                Text('Forget Password', style: textStyleOne),
                const SizedBox(height: 16),
                Text(
                  'Kindly enter a new password to validate your\naccount',
                  style: textStyleTwo,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 50),
                const TextFields(
                  label: 'Password',
                  showText: true,
                  phoneField: false,
                ),
                const SizedBox(height: 41),
                const TextFields(
                  label: 'Confirm Password',
                  showText: true,
                  phoneField: false,
                ),
                const SizedBox(height: 50),
                Container(
                  height: 52,
                  constraints: const BoxConstraints(maxWidth: 400),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ResetSuccess(),
                        ),
                      );
                    },
                    style: elevatedButtonStyleTwo,
                    child: const Text("Reset Password"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
