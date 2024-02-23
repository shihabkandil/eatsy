import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../../common/constants/app_strings.dart';
import '../../../../../common/constants/assets_paths.dart';
import '../../../../../common/widgets/custom_button.dart';
import '../auth_header.dart';
import '../../../../../common/widgets/app_text_form_field.dart';

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
                const AppTextFormField(
                  hintText: AppStrings.usernameHint,
                  prefixIconSvgPath: AssetsPaths.profileSvgIcon,
                ),
                SizedBox(
                  height: 1.6.sh,
                ),
                const AppTextFormField(
                  hintText: AppStrings.emailHint,
                  prefixIconSvgPath: AssetsPaths.messageSvgIcon,
                ),
                SizedBox(
                  height: 1.6.sh,
                ),
                const AppTextFormField(
                  hintText: AppStrings.passwordHint,
                  prefixIconSvgPath: AssetsPaths.lockSvgIcon,
                ),
                SizedBox(
                  height: 1.6.sh,
                ),
                const AppTextFormField(
                  hintText: AppStrings.confirmPassword,
                  isObscureText: true,
                  prefixIconSvgPath: AssetsPaths.lockSvgIcon,
                ),
                SizedBox(
                  height: 3.sh,
                ),
                CustomButton(
                  text: AppStrings.register,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
