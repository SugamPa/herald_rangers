import 'package:eclipse_app/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../resources/resources.dart';
import '../common/custom_button.dart';
import 'widgets/heading_onboarding.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = PageController();
  int currentPageIndex = 0;
  List<Widget> pages = [
    const HeadingOnboarding(
      text: "EMBARK ON\nA COSMIC\nJOURNEY",
      iamgeUrl: "assets/images/astronut.png",
    ),
    const HeadingOnboarding(
      text: "INITIATE A\nGALACTIC\nEXPEDITION",
      iamgeUrl: "assets/images/moon_girl.png",
    ),
    const HeadingOnboarding(
      text: "LEARNING\nMEETS THE\nCOSMOS",
      iamgeUrl: "assets/images/rocket.png",
    ),
  ];

  @override
  void initState() {
    super.initState();

    // Listen to page changes and update the currentPageIndex.
    controller.addListener(() {
      setState(() {
        currentPageIndex = controller.page?.round() ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isLastPage = currentPageIndex == pages.length - 1;
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          Expanded(
              child: PageView.builder(
            itemCount: pages.length,
            controller: controller,
            itemBuilder: (context, index) {
              return pages[index];
            },
          )),
          SmoothPageIndicator(
              controller: controller, // PageController
              count: 3,
              effect: const ExpandingDotsEffect(
                  activeDotColor: ColorManager.primaryLight,
                  dotColor: ColorManager.lighterTextGrey,
                  dotHeight: 8,
                  dotWidth: 8,
                  expansionFactor: 4,
                  spacing: 5.0), // your preferred effect
              onDotClicked: (index) {}),
          const SizedBox(height: 20),
          Center(
              child: CustomButton(
            text: isLastPage ? "Get Started" : "Next",
            radius: 15,
            size: Size(context.width * 0.9, 60),
            onPressed: () {
              if (isLastPage) {
                context.navigatorPushReplacementNamed(Routes.loginPage);
              } else {
                // Go to the next page.
                controller.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease,
                );
              }
            },
          )),
          const SizedBox(height: 20),
        ],
      ),
    ));
  }
}
