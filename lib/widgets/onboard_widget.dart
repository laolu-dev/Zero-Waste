import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/providers/on_board_prov.dart';
import 'package:zero_waste/res/res.dart';

class OnboardPage extends StatelessWidget {
  final String onBoardImage;
  final String title;
  final String subTitle;
  final bool isFirst;
  const OnboardPage({
    Key? key,
    required this.onBoardImage,
    required this.title,
    required this.subTitle,
    required this.isFirst,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: isFirst
              ? Consumer<OnBoardingProvider>(
                  builder: (BuildContext context, value, Widget? child) {
                    return TextButton(
                      onPressed: () => value.isFirst(),
                      child: Text(
                        'Skip',
                        style: GoogleFonts.jost(
                            color: Resources.color.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    );
                  },
                )
              : const SizedBox(height: 0),
        ),
        Image.asset(onBoardImage, height: 325, width: 300),
        Text(
          title,
          style: GoogleFonts.jost(
              color: Resources.color.black,
              fontSize: 24,
              fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 16),
        Text(
          subTitle,
          textAlign: TextAlign.center,
          style: GoogleFonts.jost(
              color: Resources.color.subTitle,
              fontWeight: FontWeight.w400,
              fontSize: 16),
        ),
      ],
    );
  }
}
