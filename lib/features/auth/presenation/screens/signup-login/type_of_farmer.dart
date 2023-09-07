import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/config/router/route_utils.dart';
import 'package:zero_waste/core/constants/logger.dart';
import 'package:zero_waste/core/enums/farmer_type.dart';
import 'package:zero_waste/features/auth/presenation/controller/type_controller.dart';
import '../../../../../core/constants/constants.dart';
import '../../../../../core/constants/styles/colors.dart';
import '../../../../../core/enums/auth_enum.dart';
import '../../../../../widgets/app_button.dart';
import '../../controller/auth_controller.dart';
import '../../widgets/social_login.dart';

class WhyAreYouHere extends StatelessWidget {
  const WhyAreYouHere({super.key});

  Widget farmerType(BuildContext context, FarmerType type, String text) {
    final selected = context.watch<FarmerTypeController>();
    return GestureDetector(
      onTap: () => context.read<FarmerTypeController>().changeType(type),
      child: Container(
        width: 155,
        height: 103,
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        decoration: BoxDecoration(
          color: selected.selectedType == type
              ? const Color.fromRGBO(136, 255, 222, 1)
              : Colors.white,
          border: selected.selectedType == type
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
              color: selected.selectedType == type
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
                      .map((e) =>
                          farmerType(context, e, e.getFarmerTypeString()))
                      .toList()),
              const SizedBox(height: 55),
              Consumer<AuthController>(
                builder: (context, state, child) {
                  return state.appState.when(
                    loading: () => const CircularProgressIndicator(),
                    idle: () => AppButton(
                      btnName: 'Sign In',
                      btn: () {
                        final info = context.read<AuthController>().userInfo;
                        final selectedType = context
                            .read<FarmerTypeController>()
                            .selectedType
                            .toBackendType();
                        final farmerType = {"farmerType": selectedType};
                        info.addEntries(farmerType.entries);
                        // context.read<AuthController>().signUp(info);
                         Navigator.pushNamed(context, RouteNames.otp);
                      },
                    ),
                    error: (error) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          duration: const Duration(milliseconds: 700),
                          content: Text(error!),
                        ),
                      );
                      return const SizedBox();
                    },
                    data: (data) {
                      Navigator.pushNamed(context, RouteNames.otp);
                      return const SizedBox();
                    },
                  );
                },
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
}
