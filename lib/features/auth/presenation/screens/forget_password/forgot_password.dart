import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:zero_waste/config/router/route_utils.dart';
import 'package:zero_waste/core/constants/constants.dart';
import 'package:zero_waste/core/constants/helpers.dart';
import 'package:zero_waste/core/constants/styles/colors.dart';
import 'package:zero_waste/features/auth/presenation/blocs/auth_bloc/auth_bloc.dart';
import 'package:zero_waste/features/auth/presenation/widgets/social_login.dart';
import 'package:zero_waste/features/auth/presenation/widgets/user_info_textfield.dart';
import 'package:zero_waste/widgets/app_button.dart';
import 'package:zero_waste/widgets/custom_loading.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  late final TextEditingController _email;
  late final GlobalKey<FormState> _form;

  @override
  void initState() {
    super.initState();
    _form = GlobalKey<FormState>();
    _email = TextEditingController();
  }

  @override
  void dispose() {
    _email.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authBloc = context.watch<AuthenticationBloc>();
    return BlocListener<AuthenticationBloc, AuthState>(
      listener: (context, state) {
        state is ErrorState ? showAppError(context, state.error) : null;
      },
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
            child: Column(
              children: [
                Image.asset(AppConstants.appIcon, width: 90, height: 90),
                const SizedBox(height: 15),
                Text(
                  "Forgot Password",
                  style: GoogleFonts.jost(
                      fontSize: 24,
                      color: AppColors.black,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 16),
                Text(
                  'Enter the email you used to register',
                  style: TextStyle(color: AppColors.logIn, fontSize: 16),
                ),
                const SizedBox(height: 32),
                Form(
                  key: _form,
                  child: UserInput(
                    label: 'Email',
                    controller: _email,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter a email";
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 24),
                authBloc.state is LoadingState
                    ? const CustomLoading()
                    : AppButton(
                        btnName: 'Reset',
                        btn: submitRequest,
                      ),
                const SizedBox(height: 16),
                Wrap(
                  children: [
                    Text(
                      "Already have an account? ",
                      style: TextStyle(color: AppColors.logIn, fontSize: 16),
                    ),
                    GestureDetector(
                      onTap: () =>
                          Navigator.pushNamed(context, RouteNames.login),
                      child: Text(
                        "Login",
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
                              thickness: 1, color: AppColors.dividerColor)),
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
                              thickness: 1, color: AppColors.dividerColor)),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "Login using Social Networks",
                  style: TextStyle(color: AppColors.logIn, fontSize: 16),
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

  void submitRequest() {
    if (_form.currentState!.validate()) {
      context.read<AuthenticationBloc>().setEmail(_email.text);
      context.read<AuthenticationBloc>().add(
            RequestPasswordResetEvent(payload: {"email": _email.text}),
          );
      dropKeyboard();
    }
  }
}
