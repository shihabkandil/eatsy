import 'package:flutter/material.dart';
import 'package:food_ninja/common/constants/assets_paths.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../../common/constants/app_strings.dart';
import '../auth_header.dart';
import '../custom_auth_text_form_field.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const AuthHeader(text: AppStrings.loginScreenHeader),
          SizedBox(
            height: 4.sh,
          ),
          Padding(
            padding: EdgeInsets.all(10.sw),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomAuthTextFormField(
                  hintText: AppStrings.emailHint,
                  prefixIconSvgPath: AssetsPaths.messageSvgIcon,
                ),
                SizedBox(
                  height: 2.sh,
                ),
                const CustomAuthTextFormField(
                  hintText: AppStrings.passwordHint,
                  isObscureText: true,
                  prefixIconSvgPath: AssetsPaths.lockSvgIcon,
                ),
                SizedBox(
                  height: 2.sh,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(AppStrings.orContinueText),
          )
        ],
      ),
    );
  }
}
