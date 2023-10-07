import 'package:eclipse_app/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const font = "Barlow";

final appTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: ColorManager.backgroundColor,
  primaryColor: ColorManager.white,
  primaryColorDark: const Color(0xFF2B2A2A),
  splashColor: Colors.transparent,
  brightness: Brightness.dark,
  textSelectionTheme: const TextSelectionThemeData(cursorColor: ColorManager.white),
  inputDecorationTheme: const InputDecorationTheme(iconColor: ColorManager.white, outlineBorder: BorderSide(color: ColorManager.white)),
  dialogTheme: DialogTheme(
      titleTextStyle: TextStyle(color: ColorManager.white, fontSize: 15.sp, letterSpacing: 0.2, fontWeight: FontWeight.w600),
      contentTextStyle: TextStyle(
        color: ColorManager.white,
        fontSize: 14.sp,
        letterSpacing: 0.2,
      )),
  cardColor: ColorManager.backgroundColor,
  cardTheme: const CardTheme(
    shadowColor: ColorManager.white,
    color: ColorManager.backgroundColor,
    elevation: 0.3,
  ),
  shadowColor: ColorManager.backgroundColor,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color(0xFF323337),
    selectedItemColor: Color(0xFF3A83CE),
    unselectedItemColor: ColorManager.white,
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
      color: ColorManager.white,
    ),
    displayMedium: const TextStyle(fontFamily: font, fontSize: 45, color: ColorManager.white, fontWeight: FontWeight.w500),
    displaySmall: const TextStyle(fontFamily: font, fontWeight: FontWeight.w500, fontSize: 36, letterSpacing: 1.4, color: ColorManager.white),
    titleLarge: const TextStyle(fontFamily: font, fontWeight: FontWeight.w500, color: ColorManager.white, fontSize: 22),
    titleMedium: const TextStyle(fontFamily: font, fontWeight: FontWeight.w500, color: ColorManager.white, fontSize: 16),
    titleSmall: const TextStyle(fontFamily: font, fontSize: 14, fontWeight: FontWeight.w500, color: ColorManager.white),
    bodyLarge: const TextStyle(fontFamily: font, fontWeight: FontWeight.w400, color: ColorManager.white, fontSize: 16),
    bodyMedium: const TextStyle(
      fontFamily: font,
      fontWeight: FontWeight.w400,
      color: ColorManager.white,
      fontSize: 14,
    ),
    bodySmall: const TextStyle(
      fontFamily: font,
      fontWeight: FontWeight.w400,
      color: ColorManager.white,
      fontSize: 12,
    ),
    labelLarge: TextStyle(fontFamily: font, fontSize: 14.sp, color: ColorManager.white, fontWeight: FontWeight.w400),
    labelMedium: const TextStyle(fontFamily: font, fontWeight: FontWeight.w400, fontSize: 12, color: ColorManager.white),
    labelSmall: const TextStyle(
      fontFamily: font,
      fontWeight: FontWeight.w300,
      fontSize: 11,
      color: ColorManager.white,
    ),
  ),
  appBarTheme: AppBarTheme(
    iconTheme: const IconThemeData(
      color: ColorManager.white,
      size: 25.0,
    ),
    titleTextStyle: TextStyle(
      fontFamily: font,
      fontWeight: FontWeight.w700,
      fontSize: 22.sp,
      letterSpacing: 0.2,
      color: ColorManager.white,
    ),
    backgroundColor: const Color(0xFF202125),
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: ColorManager.backgroundColor,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: ColorManager.backgroundColor,
      systemNavigationBarIconBrightness: Brightness.light,
    ),
  ),
  buttonTheme: ButtonThemeData(
      buttonColor: ColorManager.white,
      splashColor: Colors.transparent,
      textTheme: ButtonTextTheme.accent,
      colorScheme: ThemeData().colorScheme.copyWith(
            secondary: Colors.black,
            background: ColorManager.white,
          )),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(ColorManager.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.r)))),
          backgroundColor: MaterialStateProperty.all(const Color(0xFF34587D)))),
  iconTheme: const IconThemeData(color: ColorManager.white),
  dividerColor: const Color(0xffD1D1D1),
  unselectedWidgetColor: Colors.grey,
  bottomAppBarTheme: const BottomAppBarTheme(color: ColorManager.backgroundColor),
  colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: ColorManager.white,
          onPrimary: ColorManager.white,
          secondary: ColorManager.white,
          onSecondary: ColorManager.white,
          error: Colors.red,
          onError: Colors.red,
          background: Color(0xFF2B2A2A),
          onBackground: Color(0xFF2B2A2A),
          surface: Color(0xFF2B2A2A),
          onSurface: Color(0xFF2B2A2A))
      .copyWith(background: const Color(0xFF202125)),
);
