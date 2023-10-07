import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:zero_waste/core/constants/constants.dart';
import 'package:zero_waste/core/constants/helpers.dart';
import 'package:zero_waste/core/constants/styles/colors.dart';
import 'package:zero_waste/features/auth/presenation/blocs/auth_bloc/auth_bloc.dart';
import 'package:zero_waste/features/auth/presenation/widgets/password_textfield.dart';
import 'package:zero_waste/widgets/app_button.dart';
import 'package:zero_waste/widgets/custom_loading.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  late final GlobalKey<FormState> _formKey;
  late final TextEditingController _password;
  late final TextEditingController _cPassword;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
    _password = TextEditingController();
    _cPassword = TextEditingController();
  }

  @override
  void dispose() {
    _password.dispose();
    _cPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authBloc = BlocProvider.of<AuthenticationBloc>(context);
    return BlocListener<AuthenticationBloc, AuthState>(
      listener: (context, state) {},
      child: Scaffold(
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
                  authBloc.state is LoadingState
                      ? const CustomLoading()
                      : AppButton(
                          btnName: 'Reset',
                          btn: resetPassword,
                        ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void resetPassword() {
    final email = context.read<AuthenticationBloc>().email;
    if (_formKey.currentState!.validate()) {
      context.read<AuthenticationBloc>().add(
            PasswordResetEvent(payload: {
              "password": _cPassword.text,
              "email": email,
            }),
          );
      dropKeyboard();
    }
  }
}
