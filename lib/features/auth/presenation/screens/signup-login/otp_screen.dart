import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'package:zero_waste/core/constants/constants.dart';
import 'package:zero_waste/core/constants/helpers.dart';
import 'package:zero_waste/features/auth/presenation/blocs/auth_bloc/auth_bloc.dart';
import 'package:zero_waste/widgets/app_button.dart';
import 'package:zero_waste/widgets/custom_loading.dart';
import 'package:zero_waste/core/constants/styles/colors.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  late TextEditingController _pinCode;

  @override
  void initState() {
    super.initState();
    _pinCode = TextEditingController();
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
        state is ErrorState ? showAppError(context, state.error!) : null;
      },
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
              child: Column(
                children: [
                  Image.asset(AppConstants.appIcon, width: 90, height: 90),
                  const SizedBox(height: 15),
                  Text(
                    "Verify your email",
                    style: GoogleFonts.jost(
                        fontSize: 24,
                        color: AppColors.black,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Please, enter the code sent to ${authBloc.email} to validate your account.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.jost(
                      fontSize: 16,
                      color: AppColors.hintText,
                    ),
                  ),
                  const SizedBox(height: 81),
                  PinCodeTextField(
                    controller: _pinCode,
                    appContext: context,
                    length: 4,
                    keyboardType: TextInputType.number,
                    mainAxisAlignment: MainAxisAlignment.center,
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 32),
                    textStyle: GoogleFonts.jost(
                        fontSize: 28,
                        color: AppColors.black,
                        fontWeight: FontWeight.w900),
                    pinTheme: PinTheme(
                      activeColor: AppColors.primary,
                      selectedColor: AppColors.primary,
                      inactiveColor: AppColors.hintText,
                      shape: PinCodeFieldShape.box,
                      fieldHeight: 48,
                      fieldWidth: 48,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  const SizedBox(height: 82),
                  authBloc.state is LoadingState
                      ? const CustomLoading()
                      : AppButton(
                          btnName: 'Verify',
                          btn: verifyEmail,
                        ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Didn't receive code? ",
                        style: TextStyle(fontSize: 16, color: AppColors.black),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Resend code",
                          style: TextStyle(
                              fontSize: 16,
                              color: AppColors.primary,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w700),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void verifyEmail() {
    context.read<AuthenticationBloc>().add(
          VerifyEmailEvent(payload: {"otp": _pinCode.text}),
        );
    dropKeyboard();
  }
}
