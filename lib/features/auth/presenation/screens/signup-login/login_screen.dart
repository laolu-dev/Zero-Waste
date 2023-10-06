import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:zero_waste/config/router/route_utils.dart';
import 'package:zero_waste/core/constants/constants.dart';
import 'package:zero_waste/core/constants/helpers.dart';
import 'package:zero_waste/core/constants/styles/colors.dart';
import 'package:zero_waste/features/auth/presenation/controller/auth_bloc/auth_bloc.dart';
import 'package:zero_waste/features/auth/presenation/controller/auth_bloc/auth_state.dart';

import 'package:zero_waste/features/auth/presenation/widgets/password_textfield.dart';
import 'package:zero_waste/features/auth/presenation/widgets/social_login.dart';
import 'package:zero_waste/features/auth/presenation/widgets/user_info_textfield.dart';
import 'package:zero_waste/widgets/app_button.dart';
import 'package:zero_waste/widgets/custom_loading.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late GlobalKey<FormState> _formKey;
  late FocusNode _passwordFocus;
  late TextEditingController email;
  late TextEditingController password;

  @override
  void initState() {
    super.initState();
    email = TextEditingController();
    password = TextEditingController();
    _passwordFocus = FocusNode();
    _formKey = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    _passwordFocus.dispose();
    _formKey.currentState?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthState>(
      listenWhen: (previous, current) {
        return current.hasError == true && current.isLoading == false;
      },
      listener: (context, state) {
        state.hasError ? showAppError(context, state.error!) : null;
      },
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
                    "Login to your Account",
                    style: GoogleFonts.jost(
                        color: AppColors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 38),
                  UserInput(
                    label: 'Email',
                    controller: email,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Email cannot not be empty';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  PasswordInput(
                    label: 'Password',
                    controller: password,
                    focusNode: _passwordFocus,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Password cannot not be empty';
                      }
                      if (value.length < 8) {
                        return 'Your password must be at least 8 characters';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  //Forgot Password
                  Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () => Navigator.pushNamed(
                          context, RouteNames.forgotPassword),
                      child: Text(
                        "Forgot password?",
                        style: GoogleFonts.jost(
                          fontSize: 14,
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),

                  BlocBuilder<AuthenticationBloc, AuthState>(
                    builder: (context, state) {
                      return state.isLoading
                          ? const CustomLoading()
                          : AppButton(
                              btnName: 'Login',
                              btn: login,
                            );
                    },
                  ),

                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an Account? ",
                        style: GoogleFonts.jost(
                          color: const Color.fromRGBO(34, 34, 34, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, RouteNames.signup),
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                              color: AppColors.primary,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 13),
                  Container(
                    constraints: const BoxConstraints(maxWidth: 400),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                              thickness: 1, color: AppColors.dividerColor),
                        ),
                        const SizedBox(width: 15),
                        Text(
                          "OR",
                          style: TextStyle(
                              color: AppColors.orColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: Divider(
                              thickness: 1, color: AppColors.dividerColor),
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
                  //Social Login
                  const SocialLogin()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void login() {
    Map<String, dynamic> payload = {
      "password": password.text,
      "email": email.text
    };
    if (_formKey.currentState!.validate()) {
      _passwordFocus.unfocus();
      context.read<AuthenticationBloc>().add(
            LoginEvent(payload: payload),
          );
    }
  }
}
