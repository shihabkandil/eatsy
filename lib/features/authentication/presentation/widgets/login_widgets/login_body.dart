import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:food_ninja/common/widgets/clickable_text.dart';
import 'package:food_ninja/utils/app_router.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../../common/constants/app_strings.dart';
import '../../../../../common/constants/assets_paths.dart';
import '../../../../../common/widgets/custom_button.dart';
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
                  height: 1.6.sh,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    AppStrings.orContinueText,
                    style: TextStyle(
                      fontSize: 2.sh,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.sh,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialAuthButton(
                      onPressed: () {
                        //TODO GoogleSignIn
                      },
                      text: AppStrings.google,
                      assetPath: AssetsPaths.googleSvgIcon,
                    ),
                    SizedBox(
                      width: 4.sw,
                    ),
                    SocialAuthButton(
                      onPressed: () {
                        ///TODO Facebook SignIn
                      },
                      text: AppStrings.facebook,
                      assetPath: AssetsPaths.facebookSvgIcon,
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.sh,
                ),
                CustomButton(
                  text: AppStrings.login,
                  onPressed: () => context.pushRoute(
                    const RegisterRoute(),
                  ),
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
