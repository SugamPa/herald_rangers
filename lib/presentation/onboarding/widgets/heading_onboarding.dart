import 'package:flutter/material.dart';

class HeadingOnboarding extends StatelessWidget {
  const HeadingOnboarding({super.key, required this.text, required this.iamgeUrl});
  final String text;
  final String iamgeUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                ),
          ),
        ),
        const SizedBox(height: 60),
        Image.asset(
          iamgeUrl,
          height: 400,
          fit: BoxFit.fitWidth,
        ),
      ],
    );
  }
}
