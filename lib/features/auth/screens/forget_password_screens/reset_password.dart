import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zero_waste/features/auth/widgets/password_textfield.dart';
import '../../../../shared/res.dart';
import 'reset_success.dart';
import '../../../../widgets/app_button.dart';

import '../../../../constants/constant.dart';

class ResetPassword extends StatefulWidget {
  static const id = 'ResetPassword';
  const ResetPassword({Key? key}) : super(key: key);
  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();

  void _trySubmit() {
    if (_formKey.currentState!.validate()) {
      Navigator.pushNamed(context, ResetSuccess.id);
    }
  }

  @override
  void dispose() {
    _password.dispose();
    _confirmPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(Resources.iString.appIcon, width: 90, height: 90),
                const SizedBox(height: 15),
                Text(
                  'Forget Password',
                  style: GoogleFonts.jost(
                      color: headColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 16),
                Text('Kindly enter a new password to validate your\naccount',
                    style: contentTextTwo, textAlign: TextAlign.center),
                const SizedBox(height: 50),
                PasswordInput(
                  label: 'Password',
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Password must not be empty';
                    }
                    if (value.length < 8) {
                      return 'Your password must be at least 8 characters';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                PasswordInput(
                  label: 'Confirm Password',
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Password must not be empty';
                    }
                    if (value.length < 8) {
                      return 'Your password must be at least 8 character';
                    }
                    if (_password.text != _confirmPassword.text) {
                      return 'Passwords must be the same';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 50),
                AppButton(
                    btnName: 'Reset Password',
                    btn: () => Navigator.pushReplacementNamed(
                        context, ResetSuccess.id))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
