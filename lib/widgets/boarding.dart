import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/constants/constant.dart';
import 'package:zero_waste/widgets/skip_button.dart';
import '../providers/boarding.dart';

class OnBoardingWidget extends StatelessWidget {
  const OnBoardingWidget({
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
        SvgPicture.asset(image, fit: BoxFit.cover),
        SizedBox(height: sheight),
        Text(title, style: headerText),
        const SizedBox(height: 16),
        Text(
          subtitle,
          style: contentText,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
