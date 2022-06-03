import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../providers/onboarding.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<OnBoarding>(context);
    return Column(
      children: [
        const SizedBox(height: 80.5),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {
                appState.completeOnboarding();
                Navigator.pushReplacementNamed(context, '/Signup');
              },
              child: Text(
                'Skip',
                style: GoogleFonts.jost(
                  textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}

class OnboardindWidget extends StatelessWidget {
  const OnboardindWidget({
    Key? key,
    this.isFirst = false,
    required this.image,
    required this.title,
    required this.subtitle,
    this.height = 175,
    required this.sheight,
  }) : super(key: key);
  final bool isFirst;
  final String image;
  final String title;
  final String subtitle;
  final double height;
  final double sheight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        isFirst ? const SkipButton() : SizedBox(height: height),
        SvgPicture.asset(
          image,
          fit: BoxFit.cover,
        ),
        SizedBox(height: sheight),
        Text(
          title,
          style: GoogleFonts.jost(
            textStyle: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 24,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          subtitle,
          style: GoogleFonts.jost(
            textStyle: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
