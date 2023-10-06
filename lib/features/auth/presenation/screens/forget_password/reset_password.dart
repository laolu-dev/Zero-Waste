import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zero_waste/core/constants/constants.dart';
import 'package:zero_waste/core/constants/styles/colors.dart';


import '../../widgets/password_textfield.dart';

class ResetPassword extends StatefulWidget {
  static const id = 'ResetPassword';
  final String? email;
  const ResetPassword({Key? key, this.email}) : super(key: key);
  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  late final FocusNode _confirmPasswordNode;
  late final GlobalKey<FormState> _formKey;
  late final TextEditingController _password;
  late final TextEditingController _cPassword;

  @override
  void initState() {
    super.initState();
    _confirmPasswordNode = FocusNode();
    _formKey = GlobalKey<FormState>();
    _password = TextEditingController();
    _cPassword = TextEditingController();
  }

  @override
  void dispose() {
    _password.dispose();
    _cPassword.dispose();
    _confirmPasswordNode.dispose();
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
                Image.asset(AppConstants.appIcon, width: 90, height: 90),
                const SizedBox(height: 15),
                Text(
                  'Forget Password',
                  style: GoogleFonts.jost(
                      color: AppColors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 16),
                Text('Kindly enter a new password to validate your\naccount',
                    style: TextStyle(fontSize: 16, color: AppColors.logIn),
                    textAlign: TextAlign.center),
                const SizedBox(height: 50),
                PasswordInput(
                  label: 'Password',
                  controller: _password,
                  validator: (String? value) {
                    if (value!.isEmpty) {
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
                  controller: _cPassword,
                  focusNode: _confirmPasswordNode,
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'Password must not be empty';
                    }
                    if (value.length != _password.text.length) {
                      return 'Your password must be at least 8 characters';
                    }
                    if (value != _password.text) {
                      return 'Passwords must be the same';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 50),
                // Consumer<AuthController>(
                //   builder: (context, reset, child) {
                //     return reset.state == AuthState.loading
                //         ? const CircularProgressIndicator()
                //         : AppButton(
                //             btnName: 'Reset',
                //             btn: () async {
                //               if (_formKey.currentState!.validate()) {
                //                 _confirmPasswordNode.unfocus();
                //                 // await reset.resetPassword(
                //                 //     _cPassword.text, widget.email!);
                //                 checkErrorState(reset);
                //               }
                //             },
                //           );
                //   },
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // void checkErrorState(AuthController email) {
  //   if (email.state == AuthState.completed) {
  //     _cPassword.clear();
  //     _password.clear();
  //     Navigator.pushNamed(context, ResetSuccess.id);
  //   }
  //   if (email.state == AuthState.hasError) {
  //     // ScaffoldMessenger.of(context).showSnackBar(
  //     //   SnackBar(
  //     //     duration: const Duration(milliseconds: 1000),
  //     //     content: Text(email.error!),
  //     //   ),
  //     // );
  //   }
  // }
}
