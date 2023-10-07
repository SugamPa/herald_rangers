import 'package:flutter/material.dart';
import '../../../extensions/build_context_extensions.dart';

import '../../../../resources/resources.dart';

class AuthBottomText extends StatelessWidget {
  final String leftText;
  final String rightText;
  final VoidCallback? onTap;
  const AuthBottomText({
    super.key,
    required this.leftText,
    required this.rightText,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(leftText, style: context.bodyLarge?.copyWith(color: ColorManager.white, fontSize: 12)),
        SizedBox(width: context.width * 0.014),
        GestureDetector(
          onTap: onTap,
          child: Text(
            rightText,
            style: context.bodyLarge?.copyWith(color: ColorManager.primary),
          ),
        ),
      ],
    );
  }
}
