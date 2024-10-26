import 'package:auto_route/auto_route.dart';
import 'package:eatsy/common/router/app_router.dart';
import 'package:eatsy/features/authentication/presentation/widgets/register_widgets/register_form.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../../common/constants/app_strings.dart';
import '../../../../../common/widgets/app_button.dart';
import '../../../../../common/widgets/clickable_text.dart';
import '../auth_header.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({Key? key}) : super(key: key);

  // TODO add focus node implementation into cubit

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const AuthHeader(text: AppStrings.registerScreenHeader),
          SizedBox(
            height: 4.sh,
          ),
          Padding(
            padding: EdgeInsets.all(10.sw),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const RegisterForm(),
                SizedBox(
                  height: 3.sh,
                ),
                AppButton(
                  text: AppStrings.register,
                  onPressed: () =>
                      context.navigateTo(const UpdateProfilePictureRoute()),
                  padding: EdgeInsets.symmetric(
                    horizontal: 14.sw,
                    vertical: 1.6.sh,
                  ),
                ),
                SizedBox(
                  height: 1.6.sh,
                ),
                ClickableText(
                  text: AppStrings.alreadyHaveAnAccount,
                  onTap: () => context.maybePop(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
