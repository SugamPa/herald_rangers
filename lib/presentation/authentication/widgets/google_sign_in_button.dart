import 'package:flutter/material.dart';
import '../../../extensions/build_context_extensions.dart';

import '../../../../resources/resources.dart';

class GoogleSignInButton extends StatelessWidget {
  const GoogleSignInButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: context.width * 0.02),
      decoration: BoxDecoration(
        color: ColorManager.grey,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: ColorManager.pureBlack),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset(ImageAssets.googleIcon, height: context.height * 0.05),
        Text(
          "Sign in with Google",
          style: context.bodyMedium?.copyWith(color: ColorManager.white, fontWeight: FontWeight.w400),
        ),
      ]),
    );
  }
}
