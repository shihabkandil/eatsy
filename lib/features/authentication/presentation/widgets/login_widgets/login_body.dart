import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
          SizedBox(
            height: 4.sh,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.sw),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const LoginForm(),
                SizedBox(
                  height: 1.sh,
                ),
                ClickableText(
                  alignment: Alignment.centerRight,
                  text: AppStrings.forgotYourPassword,
                  onTap: () {
                    ///TODO Route to ForgotPasswordRoute
                  },
                ),
                SizedBox(
                  height: 2.2.sh,
                ),
                AppButton(
                  text: AppStrings.login,
                  onPressed: () => context.pushRoute(const HomeRoute()),
                ),
                SizedBox(
                  height: 2.sh,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    AppStrings.orContinueText,
                    style: TextStyle(
                      fontSize: 1.6.sh,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.sh,
                ),
                SocialAuthButton(
                  onPressed: () {
                    //TODO GoogleSignIn
                  },
                  text: AppStrings.googleSignIn,
                  assetPath: Assets.icons.google.path,
                ),
                SizedBox(
                  height: 4.sw,
                ),
                SocialAuthButton(
                  onPressed: () {
                    ///TODO Facebook SignIn
                  },
                  text: AppStrings.appleSignIn,
                  assetPath: Assets.icons.apple.path,
                  background: Colors.black,
                  textColor: Colors.white,
                ),
                SizedBox(
                  height: 2.sh,
                ),
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
