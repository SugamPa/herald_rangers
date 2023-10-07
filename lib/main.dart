import 'package:flutter/material.dart';

import 'presentation/authentication/pages/forgot_password/create_password_page.dart';
import 'presentation/authentication/pages/forgot_password/forgot_password_page.dart';
import 'presentation/authentication/pages/forgot_password/otp_verification_page.dart';
import 'presentation/authentication/pages/login/login_page.dart';
import 'presentation/authentication/pages/register/register_page.dart';
import 'resources/resources.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        scaffoldBackgroundColor: ColorManager.backgroundColor,
        textTheme: ThemeManager.textTheme,
        searchBarTheme: ThemeManager.searchBarTheme,
      ),
      title: Constants.appName,
      initialRoute: Routes.loginPage,
      routes: {
        Routes.loginPage: (context) => const LoginPage(),
        Routes.registerPage: (context) => const RegisterPage(),
        Routes.forgotPasswordPage: (context) => const ForgotPasswordPage(),
        Routes.otpVerificationPage: (context) => const OTPVerificationPage(),
        Routes.createPasswordPage: (context) => const CreatePasswordPage(),
      },
    );
  }
}
