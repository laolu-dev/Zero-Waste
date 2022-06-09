import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/providers/authentication.dart';
import 'package:zero_waste/screens/forget_password_screens/reset_success.dart';
import '../../constants/constant.dart';
import '../../widgets/text_field_widget.dart';

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
                  Consumer<Authentication>(
                    builder: (context, auth, child) => TextFields(
                      controller: _password,
                      label: 'Password',
                      showIcon: true,
                      phoneField: false,
                      obscureText: auth.visiblePassword,
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
                  ),
                  const SizedBox(height: 41),
                  Consumer<Authentication>(
                    builder: (context, auth, child) => TextFields(
                      controller: _confirmPassword,
                      label: 'Confirm Password',
                      showIcon: true,
                      phoneField: false,
                      obscureText: auth.visiblePassword,
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
