import 'package:flutter/material.dart';
import '../../../extensions/build_context_extensions.dart';

import '../../../resources/resources.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double elevation;
  final double leadingPaddingPercentage;
  final bool enableShadow;
  final void Function()? onTap;
  const CustomAppBar({
    super.key,
    required this.title,
    this.elevation = 1,
    this.onTap,
    this.leadingPaddingPercentage = 0.045,
    this.enableShadow = true,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leadingWidth: context.width * 0.09,
      toolbarHeight: context.height * 0.08,
      title: Text(title, style: Theme.of(context).textTheme.displayLarge?.copyWith(fontWeight: FontWeight.w400)),
      surfaceTintColor: ColorManager.white,
      backgroundColor: ColorManager.white,
      shadowColor: enableShadow ? ColorManager.grey : null,
      elevation: elevation,
      centerTitle: false,
      leading: Padding(
        padding: EdgeInsets.only(left: context.width * leadingPaddingPercentage),
        child: GestureDetector(
          onTap: onTap ?? () => Navigator.of(context).pop(),
          child: const Icon(Icons.arrow_back, size: 20, color: ColorManager.primary),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
