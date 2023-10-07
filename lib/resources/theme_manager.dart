import 'package:flutter/material.dart';

import 'color_manager.dart';

class ThemeManager {
  // Text Theme (Poppins)
  static final textTheme = ThemeData.light().textTheme.copyWith(
        headlineLarge: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: ColorManager.black),
        headlineMedium: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: ColorManager.black),
        displayLarge: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: ColorManager.black),
        displayMedium: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: ColorManager.black),
        displaySmall: const TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color: ColorManager.black),
        bodyMedium: const TextStyle(fontSize: 12, fontWeight: FontWeight.w300, color: ColorManager.black),
        bodyLarge: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: ColorManager.black),
      );

  static final searchBarTheme = ThemeData.light().searchBarTheme.copyWith(
        backgroundColor: const MaterialStatePropertyAll(ColorManager.white),
        overlayColor: const MaterialStatePropertyAll(ColorManager.white),
        shadowColor: const MaterialStatePropertyAll(ColorManager.grey),
        surfaceTintColor: const MaterialStatePropertyAll(Colors.transparent),
        elevation: const MaterialStatePropertyAll(2),
        side: MaterialStatePropertyAll(BorderSide(color: ColorManager.grey.withAlpha(50))),
        padding: const MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 12)),
        textStyle: MaterialStatePropertyAll(textTheme.displayMedium),
        hintStyle: MaterialStatePropertyAll(textTheme.displayMedium?.copyWith(color: ColorManager.labelColor)),
      );
}
