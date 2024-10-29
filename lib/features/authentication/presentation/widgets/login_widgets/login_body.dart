import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../common/constants/app_strings.dart';
import '../../../../../common/constants/gen/assets.gen.dart';
import '../../../../../common/router/app_router.dart';
import '../../../../../common/widgets/clickable_text.dart';
import '../../../../../common/widgets/app_button.dart';
import '../auth_header.dart';
import 'login_form.dart';
import 'social_auth_button.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const AuthHeader(
            text: AppStrings.loginScreenHeader,
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const LoginForm(),
                const SizedBox(height: 4),
                ClickableText(
                  alignment: Alignment.centerRight,
                  text: AppStrings.forgotYourPassword,
                  onTap: () {
                    ///TODO Route to ForgotPasswordRoute
                  },
                ),
                const SizedBox(height: 14),
                AppButton(
                  text: AppStrings.login,
                  onPressed: () => context.pushRoute(const HomeRoute()),
                ),
                const SizedBox(height: 14),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    AppStrings.orContinueText,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 14),
                SocialAuthButton(
                  onPressed: () {
                    //TODO GoogleSignIn
                  },
                  text: AppStrings.googleSignIn,
                  assetPath: Assets.icons.google.path,
                ),
                const SizedBox(height: 14),
                SocialAuthButton(
                  onPressed: () {
                    ///TODO Facebook SignIn
                  },
                  text: AppStrings.appleSignIn,
                  assetPath: Assets.icons.apple.path,
                  background: Colors.black,
                  textColor: Colors.white,
                ),
                const SizedBox(height: 14),
                ClickableText(
                  text: AppStrings.dontHaveAnAccount,
                  onTap: () => context.pushRoute(const RegisterRoute()),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
