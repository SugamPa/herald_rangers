import 'package:eclipse_app/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const font = "Barlow";

final appTheme = ThemeData.dark().copyWith(
  primaryColor: AppColors.white,
  primaryColorDark: const Color(0xFF2B2A2A),
  splashColor: Colors.transparent,
  scaffoldBackgroundColor: const Color(0xFF202125),
  brightness: Brightness.dark,
  textSelectionTheme:
      const TextSelectionThemeData(cursorColor: AppColors.white),
  inputDecorationTheme: const InputDecorationTheme(
      iconColor: AppColors.white,
      outlineBorder: BorderSide(color: AppColors.white)),
  dialogTheme: DialogTheme(
      titleTextStyle: TextStyle(
          color: AppColors.white,
          fontSize: 15.sp,
          letterSpacing: 0.2,
          fontWeight: FontWeight.w600),
      contentTextStyle: TextStyle(
        color: AppColors.white,
        fontSize: 14.sp,
        letterSpacing: 0.2,
      )),
  cardColor: AppColors.scaffoldBackgroundColor,
  cardTheme: const CardTheme(
    shadowColor: AppColors.white,
    color: AppColors.scaffoldBackgroundColor,
    elevation: 0.3,
  ),
  shadowColor: AppColors.scaffoldBackgroundColor,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color(0xFF323337),
    selectedItemColor: Color(0xFF3A83CE),
    unselectedItemColor: AppColors.white,
    selectedLabelStyle: TextStyle(
      fontWeight: FontWeight.w400,
      color: Color(0xFF3A83CE),
    ),
    showSelectedLabels: true,
    showUnselectedLabels: true,
  ),
  textTheme: TextTheme(
    displayLarge: const TextStyle(
      fontFamily: font,
      fontWeight: FontWeight.w500,
      fontSize: 57,
      color: AppColors.white,
    ),
    displayMedium: const TextStyle(
        fontFamily: font,
        fontSize: 45,
        color: AppColors.white,
        fontWeight: FontWeight.w500),
    displaySmall: const TextStyle(
        fontFamily: font,
        fontWeight: FontWeight.w500,
        fontSize: 36,
        letterSpacing: 1.4,
        color: AppColors.white),
    titleLarge: const TextStyle(
        fontFamily: font,
        fontWeight: FontWeight.w500,
        color: AppColors.white,
        fontSize: 22),
    titleMedium: const TextStyle(
        fontFamily: font,
        fontWeight: FontWeight.w500,
        color: AppColors.white,
        fontSize: 16),
    titleSmall: const TextStyle(
        fontFamily: font,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppColors.white),
    bodyLarge: const TextStyle(
        fontFamily: font,
        fontWeight: FontWeight.w400,
        color: AppColors.white,
        fontSize: 16),
    bodyMedium: const TextStyle(
      fontFamily: font,
      fontWeight: FontWeight.w400,
      color: AppColors.white,
      fontSize: 14,
    ),
    bodySmall: const TextStyle(
      fontFamily: font,
      fontWeight: FontWeight.w400,
      color: AppColors.white,
      fontSize: 12,
    ),
    labelLarge: TextStyle(
        fontFamily: font,
        fontSize: 14.sp,
        color: AppColors.white,
        fontWeight: FontWeight.w400),
    labelMedium: const TextStyle(
        fontFamily: font,
        fontWeight: FontWeight.w400,
        fontSize: 12,
        color: AppColors.white),
    labelSmall: const TextStyle(
      fontFamily: font,
      fontWeight: FontWeight.w300,
      fontSize: 11,
      color: AppColors.white,
    ),
  ),
  appBarTheme: AppBarTheme(
    iconTheme: const IconThemeData(
      color: AppColors.white,
      size: 25.0,
    ),
    titleTextStyle: TextStyle(
      fontFamily: font,
      fontWeight: FontWeight.w700,
      fontSize: 22.sp,
      letterSpacing: 0.2,
      color: AppColors.white,
    ),
    backgroundColor: const Color(0xFF202125),
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: AppColors.scaffoldBackgroundColor,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: AppColors.scaffoldBackgroundColor,
      systemNavigationBarIconBrightness: Brightness.light,
    ),
  ),
  buttonTheme: ButtonThemeData(
      buttonColor: AppColors.white,
      splashColor: Colors.transparent,
      textTheme: ButtonTextTheme.accent,
      colorScheme: ThemeData().colorScheme.copyWith(
            secondary: Colors.black,
            background: AppColors.white,
          )),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(AppColors.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.r)))),
          backgroundColor: MaterialStateProperty.all(const Color(0xFF34587D)))),
  iconTheme: const IconThemeData(color: AppColors.white),
  dividerColor: const Color(0xffD1D1D1),
  unselectedWidgetColor: Colors.grey,
  colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: AppColors.white,
      onPrimary: AppColors.white,
      secondary: AppColors.white,
      onSecondary: AppColors.white,
      error: Colors.red,
      onError: Colors.red,
      background: Color(0xFF2B2A2A),
      onBackground: Color(0xFF2B2A2A),
      surface: Color(0xFF2B2A2A),
      onSurface: Color(0xFF2B2A2A)),
  bottomAppBarTheme:
      const BottomAppBarTheme(color: AppColors.scaffoldBackgroundColor),
);
