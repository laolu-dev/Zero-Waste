import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zero_waste/views/forget_password_screens/reset_success.dart';
import 'package:zero_waste/widgets/app_button.dart';
import 'package:zero_waste/widgets/auth_widgets/password_input.dart';
import '../../constants/constant.dart';

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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(appImage, width: 90, height: 90),
                  const SizedBox(height: 15),
                  Text('Forget Password', style: headerText),
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
                  const SizedBox(height: 41),
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
      ),
    );
  }
}
