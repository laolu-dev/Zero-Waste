import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../core/constants/styles/colors.dart';

class AppButton extends StatelessWidget {
  final Function() btn;
  final String btnName;

  const AppButton({super.key, required this.btnName, required this.btn});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: btn,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        minimumSize: const Size(double.infinity, 51),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: Text(
        btnName,
        style: GoogleFonts.jost(
            fontWeight: FontWeight.w700, fontSize: 20, color: AppColors.white),
      ),
    );
  }
}
