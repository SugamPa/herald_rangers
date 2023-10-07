import 'package:eclipse_app/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';

import '../../../../resources/resources.dart';
import '../../../common/custom_button.dart';
import '../../../common/custom_text_form_field.dart';
import '../../widgets/auth_widgets.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(AppDefaults.paddingXXLarge),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: context.height * 0.08),
              const Logo(),
              SizedBox(height: context.height * 0.05),
              Padding(
                padding: const EdgeInsets.only(left: AppDefaults.padding),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text('Register', style: context.displayLarge?.copyWith(fontSize: 24, color: ColorManager.white)),
                  Text('Enter Your Personal Information',
                      style: context.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w300,
                        color: ColorManager.lighterTextGrey,
                      )),
                ]),
              ),
              SizedBox(height: context.height * 0.04),
              Form(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // Email text form field
                  const CustomTextFormField(text: "Email", keyboardType: TextInputType.emailAddress),
                  SizedBox(height: context.height * 0.02),
                  // Password text form field
                  const CustomTextFormField(text: "Password", obscureText: true, keyboardType: TextInputType.text),
                  SizedBox(height: context.height * 0.03),
                  // Log in button
                  CustomButton(
                    text: "Register",
                    size: Size(context.width * 0.9, context.height * 0.07),
                    radius: 12,
                    onPressed: () => context.navigatorPushReplacementNamed(Routes.loginPage),
                  ),
                ],
              )),
              SizedBox(height: context.height * 0.03),
              // OR divider
              const OrDivider(),
              SizedBox(height: context.height * 0.03),
              // Google sign in button
              const GoogleSignInButton(),
              SizedBox(height: context.height * 0.03),
              // Register text
              AuthBottomText(
                  leftText: "Already have an account", rightText: "Login here", onTap: () => context.navigatorPushReplacementNamed(Routes.loginPage)),
            ],
          ),
        ),
      ),
    );
  }
}
