import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'package:zero_waste/core/constants/constants.dart';
import 'package:zero_waste/core/constants/helpers.dart';
import 'package:zero_waste/core/constants/styles/colors.dart';
import 'package:zero_waste/features/auth/presenation/blocs/auth_bloc/auth_bloc.dart';
import 'package:zero_waste/widgets/app_button.dart';
import 'package:zero_waste/widgets/custom_loading.dart';

class PasswordVerification extends StatefulWidget {
  const PasswordVerification({super.key});

  @override
  State<PasswordVerification> createState() => _PasswordVerificationState();
}

class _PasswordVerificationState extends State<PasswordVerification> {
  late TextEditingController _pinCode;
  late FocusNode _pinFocusNode;

  @override
  void initState() {
    super.initState();
    _pinCode = TextEditingController();
    _pinFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _pinCode.dispose();
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
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
              child: Column(
                children: [
                  Image.asset(AppConstants.appIcon, width: 90, height: 90),
                  const SizedBox(height: 15),
                  Text(
                    'Forgot Password',
                    style: GoogleFonts.jost(
                        color: AppColors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'We’ve sent a reset code to ${authBloc.email}, kindly \ncheck ',
                    style: TextStyle(fontSize: 16, color: AppColors.logIn),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 96),
                  PinCodeTextField(
                    controller: _pinCode,
                    appContext: context,
                    length: 4,
                    mainAxisAlignment: MainAxisAlignment.center,
                    keyboardType: TextInputType.phone,
                    autoFocus: true,
                    focusNode: _pinFocusNode,
                    textStyle: GoogleFonts.jost(
                        color: AppColors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.w900),
                    pinTheme: PinTheme(
                      activeColor: AppColors.primary,
                      selectedColor: AppColors.primary,
                      inactiveColor: const Color(0xffEBEAED),
                      shape: PinCodeFieldShape.box,
                      fieldHeight: 48,
                      fieldWidth: 48,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  const SizedBox(height: 81.95),
                  authBloc.state is LoadingState
                      ? const CustomLoading()
                      : AppButton(
                          btnName: 'Reset',
                          btn: verifyOtp,
                        ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Didn't Receive Code ? ",
                        style: TextStyle(fontSize: 16, color: AppColors.black),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Resend Code",
                          style: TextStyle(
                              fontSize: 16,
                              color: AppColors.primary,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }

  void verifyOtp() {
    final email = context.read<AuthenticationBloc>().email;
    context.read<AuthenticationBloc>().add(
          VerifyPasswordOtpEvent(payload: {
            "email": email,
            "otp": _pinCode.text,
          }),
        );
     dropKeyboard();
  }
}
