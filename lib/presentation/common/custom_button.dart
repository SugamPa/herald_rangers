import 'package:flutter/material.dart';

import '../../resources/resources.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Size size;
  final double radius;
  final void Function()? onPressed;
  const CustomButton({
    super.key,
    required this.text,
    required this.size,
    this.onPressed,
    this.radius = 5,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorManager.primary,
            fixedSize: size,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          ),
          onPressed: onPressed,
          child: Text(text, style: Theme.of(context).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w400))),
    );
  }
}
