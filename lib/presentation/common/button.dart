import 'package:flutter/material.dart';

import '../../../resources/resources.dart';

class Button extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final bool filled;
  const Button({super.key, required this.text, required this.onPressed, this.filled = true});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        decoration: BoxDecoration(
          border: filled ? null : Border.all(color: ColorManager.primary),
          color: filled ? ColorManager.primary : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(text, style: Theme.of(context).textTheme.displaySmall),
      ),
    );
  }
}
