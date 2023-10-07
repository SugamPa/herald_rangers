import 'package:eclipse_app/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../../resources/resources.dart';
import '../../../common/custom_button.dart';
import '../../widgets/auth_widgets.dart';

class OTPVerificationPage extends StatelessWidget {
  const OTPVerificationPage({super.key});

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
                Text('OTP Verification', style: context.displayLarge?.copyWith(fontSize: 24, color: ColorManager.white)),
                SizedBox(height: context.height * 0.01),
                Text("Enter the verification code we just sent on your email address",
                    style: context.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w300,
                      color: ColorManager.lighterTextGrey,
                    )),
                SizedBox(height: context.height * 0.02),
                PinCodeTextField(
                  appContext: context,
                  keyboardType: TextInputType.number,
                  length: 5,
                  showCursor: false,
                  textStyle: context.bodyLarge?.copyWith(
                    fontSize: 32,
                    fontWeight: FontWeight.w300,
                    color: ColorManager.white,
                  ),
                  pinTheme: PinTheme.defaults(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(AppDefaults.borderRadiusSmall),
                    fieldHeight: context.height * 0.07,
                    fieldWidth: context.width * 0.15,
                    activeBorderWidth: 1,
                    inactiveBorderWidth: 1,
                    activeColor: ColorManager.primary,
                    inactiveColor: ColorManager.white,
                    selectedColor: ColorManager.primary,
                    selectedFillColor: ColorManager.primary,
                    inactiveFillColor: ColorManager.pureBlack,
                    activeFillColor: ColorManager.primary,
                  ),
                ),
                SizedBox(height: context.height * 0.04),
                CustomButton(
                  text: "Verify",
                  size: Size(context.width * 0.9, context.height * 0.06),
                  radius: 12,
                  onPressed: () => context.navigatorPushReplacementNamed(Routes.createPasswordPage),
                ),
                SizedBox(height: context.height * 0.08),
              ],
            )));
  }
}
