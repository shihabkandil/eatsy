import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../../common/constants/app_strings.dart';
import '../../../../../common/constants/assets_paths.dart';
import '../../../../../common/widgets/app_text_form_field.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
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
            isPasswordField: true,
            isObscureText: true,
          ),
          SizedBox(
            height: 1.6.sh,
          ),
          const AppTextFormField(
            hintText: AppStrings.confirmPassword,
            isObscureText: true,
            isPasswordField: true,
            prefixIconSvgPath: AssetsPaths.lockSvgIcon,
          ),
      ],),
    );
  }
}
