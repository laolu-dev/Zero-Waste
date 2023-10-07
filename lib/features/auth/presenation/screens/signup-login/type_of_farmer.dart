import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:zero_waste/config/router/route_utils.dart';
import 'package:zero_waste/core/enums/farmer_type.dart';
import 'package:zero_waste/features/auth/presenation/blocs/auth_bloc/auth_bloc.dart';
import 'package:zero_waste/features/auth/presenation/blocs/farmer_type_cubit/farmer_type_cubit.dart';
import 'package:zero_waste/features/auth/presenation/widgets/social_login.dart';
import 'package:zero_waste/widgets/custom_loading.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/constants/styles/colors.dart';
import '../../../../../widgets/app_button.dart';

class WhyAreYouHere extends StatelessWidget {
  const WhyAreYouHere({super.key});

  Widget farmerType(BuildContext context, FarmerType type, String text) {
    final selected = context.watch<FarmerTypeCubit>();
    return GestureDetector(
      onTap: () => context.read<FarmerTypeCubit>().selectType(type),
      child: Container(
        width: 155,
        height: 103,
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        decoration: BoxDecoration(
          color: selected.state.type == type
              ? const Color.fromRGBO(136, 255, 222, 1)
              : Colors.white,
          border: selected.state.type == type
              ? null
              : Border.all(color: const Color.fromRGBO(151, 151, 151, 1)),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.jost(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: selected.state.type == type
                  ? const Color.fromRGBO(64, 64, 64, 1)
                  : const Color.fromRGBO(128, 128, 128, 1),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AuthenticationBloc>().state;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
          child: Column(
            children: [
              Image.asset(AppConstants.appIcon, width: 90, height: 90),
              const SizedBox(height: 15),
              Text(
                "Why are you here?",
                style: GoogleFonts.jost(
                    color: AppColors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 27),
              Wrap(
                  alignment: WrapAlignment.center,
                  runSpacing: 16,
                  spacing: 18,
                  children: FarmerType.values
                      .map(
                        (e) => farmerType(context, e, e.getFarmerTypeString()),
                      )
                      .toList()),
              const SizedBox(height: 55),
              state is LoadingState
                  ? const CustomLoading()
                  : AppButton(
                      btnName: 'Sign In',
                      btn: () => signup(context),
                    ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: GoogleFonts.jost(
                        color: const Color.fromRGBO(34, 34, 34, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, RouteNames.login),
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: AppColors.primary,
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
                style: GoogleFonts.jost(
                    color: const Color.fromRGBO(34, 34, 34, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 16),
              const SocialLogin()
            ],
          ),
        ),
      ),
    );
  }

  void signup(BuildContext context) {
    final selectedType =
        context.read<FarmerTypeCubit>().state.type.toBackendType();
    final info = context.read<AuthenticationBloc>().userInfo;
    info.addAll({"farmerType": selectedType});
    context.read<AuthenticationBloc>().add(
          SignupEvent(payload: info),
        );
  }
}
