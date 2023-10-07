import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:zero_waste/config/router/route_utils.dart';
import 'package:zero_waste/core/service/local_storage.dart';
import '../../../core/constants/constants.dart';
import '../../../core/constants/styles/colors.dart';
import '../widgets/onboard_widget.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  late PageController _controller;
  late double showSkip;
  late bool button;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
    showSkip = 1;
    button = true;
    _controller.addListener(() {
      _controller.page! < 2
          ? setState(() => button = true)
          : setState(() => button = false);
      _controller.page! > 0
          ? setState(() => showSkip = 0)
          : setState(() => showSkip = 1);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Opacity(
                opacity: showSkip,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      _controller.animateToPage(2,
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.linear);
                      setState(() => button = true);
                    },
                    child: Text(
                      'Skip',
                      style: GoogleFonts.jost(
                          fontSize: 16, color: AppColors.black),
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              child: PageView(
                controller: _controller,
                children: [
                  OnboardPage(
                    image: AppConstants.image1,
                    title: AppConstants.onBoardTitle1,
                    content: AppConstants.onBoardContent1,
                  ),
                  OnboardPage(
                    image: AppConstants.image2,
                    title: AppConstants.onBoardTitle2,
                    content: AppConstants.onBoardContent2,
                  ),
                  OnboardPage(
                    image: AppConstants.image3,
                    title: AppConstants.onBoardTitle3,
                    content: AppConstants.onBoardContent3,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: SmoothPageIndicator(
                      controller: _controller,
                      count: 3,
                      effect: const WormEffect(
                        spacing: 4,
                        dotColor: Color(0xffD9D9D9),
                        activeDotColor: Color(0xff0A9D56),
                      ),
                    ),
                  ),
                  button
                      ? ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary,
                            fixedSize: const Size(35, 35),
                            shape: const CircleBorder(),
                          ),
                          child: Icon(Icons.arrow_forward_ios,
                              color: AppColors.white, size: 16),
                          onPressed: () {
                            _controller.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                        )
                      : ElevatedButton(
                          onPressed: () {
                            SharedPrefs.setOnboardingStatus(true);
                            Navigator.pushNamed(context, RouteNames.login);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Text(
                            'Get Started',
                            style: GoogleFonts.jost(
                              fontSize: 16,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
