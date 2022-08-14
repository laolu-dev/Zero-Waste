import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:zero_waste/providers/on_board_prov.dart';
import 'package:zero_waste/res/res.dart';
import 'package:zero_waste/widgets/onboard_widget.dart';
import '../../constants/constant.dart';
import '../auth/login_screen.dart';

class OnBoardScreen extends StatelessWidget {
  static const id = '/OnBoarding';

  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Consumer<OnBoardingProvider>(
            builder: (BuildContext context, val, child) {
              return PageView(
                controller: val.controller,
                onPageChanged: (index) {
                  if (index == 2) {
                    val.onLastPage();
                  }
                },
                children: [
                  OnboardPage(
                      onBoardImage: Resources.iString.image1,
                      title: Resources.oString.onBoardTitle1,
                      subTitle: Resources.oString.onBoardContent1,
                      isFirst: true),
                  OnboardPage(
                      onBoardImage: Resources.iString.image2,
                      title: Resources.oString.onBoardTitle2,
                      subTitle: Resources.oString.onBoardContent2,
                      isFirst: false),
                  OnboardPage(
                      onBoardImage: Resources.iString.image3,
                      title: Resources.oString.onBoardTitle3,
                      subTitle: Resources.oString.onBoardContent3,
                      isFirst: false),
                ],
              );
            },
          ),
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.only(bottom: 70, right: 10, left: 20),
        child: Consumer<OnBoardingProvider>(
          builder: (BuildContext context, val, child) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SmoothPageIndicator(
                  onDotClicked: (index) => val.controller.animateToPage(index,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut),
                  controller: val.controller,
                  count: 3,
                  effect: const WormEffect(
                    spacing: 4,
                    dotColor: Color(0xffD9D9D9),
                    activeDotColor: Color(0xff0A9D56),
                  ),
                ),
                val.finalPage
                    ? ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: primaryColor,
                          fixedSize: const Size(35, 35),
                          shape: const CircleBorder(),
                        ),
                        child: const Icon(Icons.arrow_forward_ios,
                            color: white, size: 16),
                        onPressed: () {
                          val.controller.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut);
                        },
                      )
                    : ElevatedButton(
                        onPressed: () => Navigator.pushReplacementNamed(
                            context, LoginScreen.id),
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xff0A9D56),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Text('Get Started', style: buttonTextStyleOne),
                      )
              ],
            );
          },
        ),
      ),
    );
  }
}
