import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/constants/styles/colors.dart';

class OnboardPage extends StatelessWidget {
  final String image;
  final String title;
  final String content;

  const OnboardPage({
    super.key,
    required this.image,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image, height: 400, width: 300),
        Text(
          title,
          style: GoogleFonts.jost(
              color: AppColors.black,
              fontSize: 24,
              fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 16),
        Text(
          content,
          textAlign: TextAlign.center,
          style: GoogleFonts.jost(fontSize: 16, color: AppColors.subTitle),
        ),
      ],
    );
  }
}
