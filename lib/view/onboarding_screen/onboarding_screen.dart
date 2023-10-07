import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Text(
            "EMBARK ON\nA COSMIC\nJOURNEY",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontSize: 42,
                  fontWeight: FontWeight.w700,
                ),
          ),
          Image.asset(
            "assets/images/astronut.png",
            height: 500.h,
          ),
        ],
      ),
    ));
  }
}
