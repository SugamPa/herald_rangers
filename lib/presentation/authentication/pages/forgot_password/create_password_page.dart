import 'package:eclipse_app/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';
import '../../../common/custom_button.dart';
import '../../../common/custom_text_form_field.dart';

import '../../../../../resources/resources.dart';
import '../../widgets/auth_widgets.dart';

class CreatePasswordPage extends StatelessWidget {
  const CreatePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(AppDefaults.paddingXXLarge),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: context.height * 0.08),
                  const Logo(),
                  SizedBox(height: context.height * 0.1),
                  Text('Create new password', style: context.displayLarge?.copyWith(fontSize: 24, color: ColorManager.white)),
                  SizedBox(height: context.height * 0.01),
                  Text("Your new password must be unique from those previously used",
                      style: context.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w300,
                        color: ColorManager.lighterTextGrey,
                      )),
                  SizedBox(height: context.height * 0.02),
                  Text('New Password', style: context.displayLarge?.copyWith(fontSize: 18, color: ColorManager.white)),
                  SizedBox(height: context.height * 0.015),
                  const CustomTextFormField(text: "Enter password", obscureText: true, keyboardType: TextInputType.text),
                  SizedBox(height: context.height * 0.03),
                  Text('Confirm Password', style: context.displayLarge?.copyWith(fontSize: 18, color: ColorManager.white)),
                  SizedBox(height: context.height * 0.015),
                  const CustomTextFormField(text: "Enter confirm password", obscureText: true, keyboardType: TextInputType.text),
                  SizedBox(height: context.height * 0.04),
                  CustomButton(
                    text: "Verify",
                    size: Size(context.width * 0.9, context.height * 0.06),
                    radius: 12,
                    onPressed: () => context.navigatorPushReplacementNamed(Routes.homePage),
                  ),
                ],
              ),
            )));
  }
}
