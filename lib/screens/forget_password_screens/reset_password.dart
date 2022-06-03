import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constants/constant.dart';
import '../../widgets/text_field_widget.dart';

class ResetPassword extends StatefulWidget {
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
      Navigator.pushNamed(context, '/ResetSuccess');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 60),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(appImage, width: 75, height: 75),
                  const SizedBox(height: 15),
                  Text('Forget Password', style: headerText),
                  const SizedBox(height: 16),
                  Text(
                    'Kindly enter a new password to validate your\naccount',
                    style: contentTextTwo,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 50),
                  TextFields(
                    controller: _password,
                    label: 'Password',
                    showText: true,
                    phoneField: false,
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
                  TextFields(
                    controller: _confirmPassword,
                    label: 'Confirm Password',
                    showText: true,
                    phoneField: false,
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Password must not be empty';
                      }
                      if (value.length < 8) {
                        return 'Your password must be at least 8 character';
                      }
                      if (_password.text != _confirmPassword.text) {
                        return 'Password and Confirm Password must be the same';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 50),
                  Container(
                    height: 52,
                    constraints: const BoxConstraints(maxWidth: 400),
                    child: ElevatedButton(
                      onPressed: () {
                        _trySubmit();
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
      ),
    );
  }
}
