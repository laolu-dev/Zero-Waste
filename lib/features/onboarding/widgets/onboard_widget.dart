import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/config/res.dart';


class OnboardPage extends StatelessWidget {
  final String image;
  final String title;
  final String content;

  const OnboardPage(
      {Key? key,
      required this.image,
      required this.title,
      required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image, height: 400, width: 300),
        Text(
          title,
          style: GoogleFonts.jost(
              color: Resources.color.black,
              fontSize: 24,
              fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 16),
        Text(
          content,
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
