import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'constants/theme.dart';
import 'presentation/authentication/pages/forgot_password/create_password_page.dart';
import 'presentation/authentication/pages/forgot_password/forgot_password_page.dart';
import 'presentation/authentication/pages/forgot_password/otp_verification_page.dart';
import 'presentation/authentication/pages/login/login_page.dart';
import 'presentation/authentication/pages/register/register_page.dart';
import 'presentation/homepage/pages/home.dart';
import 'presentation/onboarding/onboarding_screen.dart';
import 'resources/resources.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        splitScreenMode: true,
        designSize: const Size(390, 844),
        minTextAdapt: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.dark,
            theme: appTheme,
            title: Constants.appName,
            initialRoute: Routes.homePage,
            routes: {
              Routes.onboardingPage: (context) => const OnBoardingScreen(),
              Routes.loginPage: (context) => const LoginPage(),
              Routes.registerPage: (context) => const RegisterPage(),
              Routes.forgotPasswordPage: (context) =>
                  const ForgotPasswordPage(),
              Routes.otpVerificationPage: (context) =>
                  const OTPVerificationPage(),
              Routes.createPasswordPage: (context) =>
                  const CreatePasswordPage(),
              Routes.homePage: (context) => const Home(),
            },
          );
        });
  }
}
