import 'package:eclipse_app/resources/resources.dart';
import 'package:flutter/material.dart';
import '../../../extensions/build_context_extensions.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Logo image
        SizedBox(
          width: context.width * 0.37,
          child: Image.asset(
            ImageAssets.logo,
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}
