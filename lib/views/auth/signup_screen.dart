import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/constants/constant.dart';
import 'package:zero_waste/providers/user_data.dart';
import 'package:zero_waste/service/firebase_auth.dart';
import 'package:zero_waste/views/auth/why_are_you_here_screen.dart';
import 'package:zero_waste/widgets/auth_widgets/password_input.dart';
import 'package:zero_waste/widgets/auth_widgets/social_login.dart';
import 'package:zero_waste/widgets/auth_widgets/user_input.dart';
import '../../widgets/app_button.dart';
import '../forget_password_screens/forgot_password.dart';
import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  static const id = 'SignUpScreen';
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    _nameController.dispose();
    _stateController.dispose();
    _phoneController.dispose();
    _addressController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final userAuth = UserAuthentication();
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
                  Text("Register an Account", style: headerText),
                  const SizedBox(height: 15),
                  UserInput(label: 'Full Name', controller: _nameController),
                  const SizedBox(height: 16),
                  UserInput(
                    label: 'Email',
                    controller: _emailController,
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Email cannot not be empty';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  UserInput(
                    label: 'Phone Number',
                    controller: _phoneController,
                    type: TextInputType.phone,
                  ),
                  const SizedBox(height: 16),
                  UserInput(label: 'Address', controller: _addressController),
                  const SizedBox(height: 16),
                  UserInput(label: 'State', controller: _stateController),
                  const SizedBox(height: 16),
                  PasswordInput(
                    label: 'Password',
                    controller: _passwordController,
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Password cannot not be empty';
                      }
                      if (value.length < 8) {
                        return 'Password must be at least 8 characters';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 8),
                  Container(
                    constraints:
                        const BoxConstraints.expand(height: 15, width: 400),
                    child: GestureDetector(
                      onTap: () =>
                          Navigator.pushNamed(context, ForgotPassword.id),
                      child:
                          Text("Forgot password?", style: forgotPasswordText),
                    ),
                  ),
                  const SizedBox(height: 24),
                  AppButton(
                    btn: () {
                      if (_formKey.currentState!.validate()) {
                        context.read<UserAuth>().submitForm(
                            _nameController.text,
                            _phoneController.text,
                            _addressController.text,
                            _stateController.text);
                        userAuth
                            .createUser(
                              password: _passwordController.text,
                              email: _emailController.text,
                              phone: _phoneController.text,
                              name: _nameController.text,
                              state: _stateController.text,
                              address: _addressController.text,
                            )
                            .whenComplete(() =>
                                Navigator.pushNamed(context, WhyAreYouHere.id));
                      }
                    },
                    btnName: 'Next',
                  ),
                  const SizedBox(height: 16),
                  Wrap(
                    children: [
                      Text("Already have an account? ", style: contentText),
                      GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, LoginScreen.id),
                        child: Text("Login", style: linkText),
                      ),
                    ],
                  ),
                  const SizedBox(height: 13),
                  Container(
                    constraints: const BoxConstraints(maxWidth: 400),
                    child: Row(
                      children: [
                        const Expanded(
                          child: Divider(thickness: 1, color: dividerColor),
                        ),
                        const SizedBox(width: 15),
                        Text("OR", style: orTextStyle),
                        const SizedBox(width: 15),
                        const Expanded(
                          child: Divider(thickness: 1, color: dividerColor),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text("Login using Social Networks", style: contentText),
                  const SizedBox(height: 16),
                  const SocialLogin()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
