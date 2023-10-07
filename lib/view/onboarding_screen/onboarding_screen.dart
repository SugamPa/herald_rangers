import 'package:eclipse_app/constants/app_colors.dart';
import 'package:eclipse_app/view/onboarding_screen/widgets/heading_onboarding.dart';
import 'package:eclipse_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
                  activeDotColor: AppColors.secondary,
                  dotColor: Colors.grey,
                  dotHeight: 8,
                  dotWidth: 8,
                  expansionFactor: 4,
                  spacing: 5.0), // your preferred effect
              onDotClicked: (index) {}),
          const SizedBox(height: 30),
          Center(
              child: CustomButton(
            buttontext: isLastPage ? "Get Started" : "Next",
            ontap: () {
              if (isLastPage) {
                // Handle navigation to your main screen or any other action.
              } else {
                // Go to the next page.
                controller.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease,
                );
              }
            },
          ))
        ],
      ),
    ));
  }
}
