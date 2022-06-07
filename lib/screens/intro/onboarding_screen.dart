import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../constants/constant.dart';
import '../../providers/boarding.dart';
import '../../widgets/boarding.dart';

class OnBoarding extends StatelessWidget {
  OnBoarding({Key? key}) : super(key: key);
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<OnBoardingProvider>(context);
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 120, right: 24, left: 24),
        child: PageView(
          controller: controller,
          onPageChanged: (index) => appState.onBoardingLastPage(index == 2),
          children: const [
            OnBoardingWidget(
              isFirst: true,
              image: 'assets/images/Farmer-rafiki.svg',
              title: 'Exchange Waste Product',
              subtitle:
                  'Exchange your farm waste for organic manure \nby supplying a black soldier fly farmer.',
              sheight: 30.75,
            ),
            OnBoardingWidget(
              image: 'assets/images/Farmer-amico.svg',
              title: 'Connect With Labourers',
              subtitle:
                  'Opportunity to get co-workers and connect with \nlaboures to sort out bad crops and waste on \nfarms.',
              sheight: 36,
            ),
            OnBoardingWidget(
              image: 'assets/images/Farmer-pana.svg',
              title: 'Get Source for Feed ',
              subtitle: 'Get a rich source of insect protein for feeds. ',
              height: 215,
              sheight: 76.67,
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Padding(
          padding: const EdgeInsets.only(top: 22, bottom: 70, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SmoothPageIndicator(
                onDotClicked: (index) => controller.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                ),
                controller: controller,
                count: 3,
                effect: const WormEffect(
                  spacing: 4,
                  dotColor: Color(0xffD9D9D9),
                  activeDotColor: Color(0xff0A9D56),
                ),
              ),
              appState.isOnBoardingLastPage
                  ? ElevatedButton(
                      onPressed: () {
                        appState.completeOnBoarding();
                        Navigator.pushReplacementNamed(context, '/Login');
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xff0A9D56),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        'Get Started',
                        style: buttonTextStyleOne,
                      ),
                    )
                  : ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: primaryColor,
                        fixedSize: const Size(35, 35),
                        shape: const CircleBorder(),
                      ),
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: white,
                        size: 16,
                      ),
                      onPressed: () => controller.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
