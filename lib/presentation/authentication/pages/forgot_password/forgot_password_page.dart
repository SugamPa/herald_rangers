import 'package:eclipse_app/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';

import '../../../../../resources/resources.dart';
import '../../../common/custom_button.dart';
import '../../../common/custom_text_form_field.dart';
import '../../widgets/auth_widgets.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(AppDefaults.paddingXXLarge),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: context.height * 0.08),
                const Logo(),
                const Spacer(),
                Text('Forgot Password', style: context.displayLarge?.copyWith(fontSize: 24, color: ColorManager.white)),
                SizedBox(height: context.height * 0.01),
                Text("Don't worry it occurs Please enter the email address linked with your account",
                    style: context.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w300,
                      color: ColorManager.lighterTextGrey,
                    )),
                SizedBox(height: context.height * 0.02),
                const CustomTextFormField(text: "Enter your email", keyboardType: TextInputType.emailAddress),
                SizedBox(height: context.height * 0.04),
                CustomButton(
                  text: "Send Code",
                  size: Size(context.width * 0.9, context.height * 0.06),
                  radius: 12,
                  onPressed: () => context.navigatorPushNamed(Routes.otpVerificationPage),
                ),
                SizedBox(height: context.height * 0.08),
              ],
            )));
  }
}
