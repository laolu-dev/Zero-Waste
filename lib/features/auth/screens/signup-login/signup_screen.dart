import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../../../config/res.dart';
import '../../../../provider/authenticate.dart';
import '../../widgets/password_textfield.dart';
import '../../../../widgets/app_button.dart';
import '../../widgets/social_login.dart';
import '../../widgets/user_info_textfield.dart';
import '../forget_password/forgot_password.dart';
import 'login_screen.dart';
import 'type_of_farmer.dart';

class SignUpScreen extends StatefulWidget {
  static const id = '/sign_up';
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late GlobalKey<FormState> _formKey;
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _phoneController;
  late TextEditingController _homeAddressController;
  late TextEditingController _stateController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _phoneController = TextEditingController();
    _homeAddressController = TextEditingController();
    _stateController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _nameController.dispose();
    _stateController.dispose();
    _phoneController.dispose();
    _homeAddressController.dispose();
    _emailController.dispose();
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
              children: [
                Image.asset(Resources.iString.appIcon, width: 90, height: 90),
                const SizedBox(height: 15),
                Text(
                  "Register an Account",
                  style: GoogleFonts.jost(
                      color: Resources.color.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 15),
                UserInput(label: 'Full Name', controller: _nameController),
                const SizedBox(height: 16),
                UserInput(
                  label: 'Email',
                  controller: _emailController,
                  validator: (String? value) {
                    if (value!.isEmpty) {
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
                UserInput(
                  label: 'homeAddress',
                  controller: _homeAddressController,
                ),
                const SizedBox(height: 16),
                UserInput(
                  label: 'State',
                  controller: _stateController,
                ),
                const SizedBox(height: 16),
                PasswordInput(
                  label: 'Password',
                  controller: _passwordController,
                  validator: (String? value) {
                    if (value!.isEmpty) {
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
                    child: Text(
                      "Forgot password?",
                      style: GoogleFonts.jost(
                        color: Resources.color.primary,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                AppButton(
                  btn: () => validateAndSubmit(context),
                  btnName: 'Next',
                ),
                const SizedBox(height: 16),
                Wrap(
                  children: [
                    Text(
                      "Already have an account? ",
                      style: GoogleFonts.jost(
                        color: const Color.fromRGBO(34, 34, 34, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, LoginScreen.id),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Resources.color.primary,
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 13),
                Container(
                  constraints: const BoxConstraints(maxWidth: 400),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                            thickness: 1, color: Resources.color.dividerColor),
                      ),
                      const SizedBox(width: 15),
                      Text(
                        "OR",
                        style: TextStyle(
                            color: Resources.color.orColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: Divider(
                            thickness: 1, color: Resources.color.dividerColor),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "Login using Social Networks",
                  style: GoogleFonts.jost(
                    color: const Color.fromRGBO(34, 34, 34, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 16),
                const SocialLogin()
              ],
            ),
          ),
        ),
      ),
    );
  }

   void validateAndSubmit(BuildContext context) {
    _formKey.currentState!.save();
    if (_formKey.currentState!.validate()) {
      context.read<UserAuth>().getUserInfo(
          _nameController.text,
          _phoneController.text,
          _homeAddressController.text,
          _stateController.text,
          _emailController.text,
          _passwordController.text);
      Navigator.of(context).pushNamed(WhyAreYouHere.id);
    }
    _nameController.clear();
    _phoneController.clear();
    _homeAddressController.clear();
    _stateController.clear();
    _emailController.clear();
    _passwordController.clear();
  }
}
