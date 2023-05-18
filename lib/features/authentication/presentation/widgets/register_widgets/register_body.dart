import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../../common/constants/app_strings.dart';
import '../../../../../common/constants/assets_paths.dart';
import '../auth_header.dart';
import '../custom_auth_text_form_field.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({Key? key}) : super(key: key);

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
                const CustomAuthTextFormField(
                  hintText: AppStrings.usernameHint,
                  prefixIconSvgPath: AssetsPaths.profileSvgIcon,
                ),
                SizedBox(
                  height: 2.sh,
                ),
                const CustomAuthTextFormField(
                  hintText: AppStrings.passwordHint,
                  isObscureText: true,
                  prefixIconSvgPath: AssetsPaths.lockSvgIcon,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
