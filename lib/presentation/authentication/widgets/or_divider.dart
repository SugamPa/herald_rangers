import 'package:flutter/material.dart';
import '../../../extensions/build_context_extensions.dart';

import '../../../../resources/resources.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 0.9,
          width: context.width * 0.34,
          color: ColorManager.lighterTextGrey,
        ),
        SizedBox(width: context.width * 0.05),
        Text(
          "OR",
          style: context.bodyLarge?.copyWith(fontWeight: FontWeight.w300, color: ColorManager.lighterTextGrey),
        ),
        SizedBox(width: context.width * 0.05),
        Container(
          height: 0.9,
          width: context.width * 0.34,
          color: ColorManager.lighterTextGrey,
        ),
      ],
    );
  }
}
