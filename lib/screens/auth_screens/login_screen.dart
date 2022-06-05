import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:zero_waste/constants/constant.dart';
import '../../widgets/text_field_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _username = TextEditingController();

  void _trySubmit() {
    if (_formKey.currentState!.validate()) {
      //Nav to Home Page
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 76),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(appImage, width: 75, height: 75),
                  const SizedBox(height: 15),
                  Text("Login to your Account", style: headerText),
                  const SizedBox(height: 38),
                  TextFields(
                    controller: _username,
                    label: 'Username',
                    showText: false,
                    phoneField: false,
                  ),
                  const SizedBox(height: 16),
                  TextFields(
                    controller: _password,
                    label: 'Password',
                    showText: true,
                    phoneField: false,
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Password cannot not be empty';
                      }
                      if (value.length < 8) {
                        return 'Your password must be at least 8 characters';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  Container(
                    constraints:
                        const BoxConstraints.expand(height: 15, width: 400),
                    child: GestureDetector(
                      onTap: () =>
                          Navigator.pushNamed(context, '/ForgotPassword'),
                      child:
                          Text("Forgot password?", style: forgotPasswordText),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    height: 52,
                    constraints: const BoxConstraints(maxWidth: 400),
                    child: ElevatedButton(
                      onPressed: () {
                        _trySubmit();
                        Navigator.pushNamed(context, '/Home');
                      },
                      style: elevatedButtonStyleTwo,
                      child: const Text("Login"),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Wrap(
                    children: [
                      Text("Don't have an Account? ", style: contentText),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, '/Signup'),
                        child: Text("Sign up", style: linkText),
                      )
                    ],
                  ),
                  const SizedBox(height: 13),
                  Container(
                    constraints: const BoxConstraints(maxWidth: 400),
                    child: Row(
                      children: [
                        Expanded(
                            child: Divider(thickness: 1, color: dividerColor)),
                        const SizedBox(width: 15),
                        Text("OR", style: orTextStyle),
                        const SizedBox(width: 15),
                        Expanded(
                            child: Divider(thickness: 1, color: dividerColor)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text("Login using Social Networks", style: contentText),
                  const SizedBox(height: 16),
                  Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      socialLoginContainer(
                        child: SvgPicture.asset(fbSvg),
                      ),
                      const SizedBox(width: 12),
                      socialLoginContainer(
                        child: SvgPicture.asset(googleSvg),
                      ),
                      const SizedBox(width: 12),
                      socialLoginContainer(
                        child: SvgPicture.asset(linklnSvg),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
