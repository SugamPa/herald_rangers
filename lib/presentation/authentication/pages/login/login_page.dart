import 'package:eclipse_app/extensions/build_context_extensions.dart';
import 'package:eclipse_app/presentation/authentication/pages/login/cubit/login_cubit.dart';
import 'package:eclipse_app/presentation/authentication/pages/login/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../resources/resources.dart';
import '../../../common/custom_button.dart';
import '../../../common/custom_text_form_field.dart';
import '../../widgets/auth_widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static final emailController = TextEditingController();
  static final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: Scaffold(
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
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Login',
                            style: context.displayLarge?.copyWith(
                                fontSize: 24, color: ColorManager.white)),
                        SizedBox(height: context.height * 0.002),
                        Text('Login to continue using the app',
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
                    CustomTextFormField(
                        controller: emailController,
                        text: "Email",
                        keyboardType: TextInputType.emailAddress),
                    SizedBox(height: context.height * 0.02),
                    // Password text form field
                    CustomTextFormField(
                        controller: passwordController,
                        text: "Password",
                        obscureText: true,
                        keyboardType: TextInputType.text),
                    SizedBox(height: context.height * 0.008),
                    // Forgot password text button
                    GestureDetector(
                      onTap: () =>
                          context.navigatorPushNamed(Routes.forgotPasswordPage),
                      child: Text(
                        "Forgot Password?",
                        style: context.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w300,
                            color: ColorManager.white),
                      ),
                    ),
                    SizedBox(height: context.height * 0.03),
                    // Log in button
                    BlocConsumer<LoginCubit, LoginState>(
                      listener: (context, state) => state.isError
                          ? context.showSnackBar(state.error)
                          : null,
                      builder: (context, state) {
                        return CustomButton(
                            text: "Log in",
                            size: Size(
                                context.width * 0.9, context.height * 0.07),
                            radius: 12,
                            onPressed: () {
                              context
                                  .read<LoginCubit>()
                                  .loginWithEmailandPassword(
                                      email: emailController.text,
                                      password: passwordController.text,
                                      onSuccess: () {
                                        context.navigatorPushReplacementNamed(
                                            Routes.homePage);
                                      });
                            });
                      },
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
                    leftText: "Don't have an account?",
                    rightText: "Register here",
                    onTap: () => context
                        .navigatorPushReplacementNamed(Routes.registerPage)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
