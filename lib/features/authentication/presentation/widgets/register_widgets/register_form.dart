import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../../common/constants/app_strings.dart';
import '../../../../../common/widgets/app_text_form_field.dart';
import '../../../../../gen/assets.gen.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppTextFormField(
            hintText: AppStrings.usernameHint,
            prefixIconSvgPath: Assets.icons.profile,
          ),
          SizedBox(
            height: 1.6.sh,
          ),
          AppTextFormField(
            hintText: AppStrings.emailHint,
            prefixIconSvgPath: Assets.icons.message,
          ),
          SizedBox(
            height: 1.6.sh,
          ),
          AppTextFormField(
            hintText: AppStrings.passwordHint,
            prefixIconSvgPath: Assets.icons.lock,
            isPasswordField: true,
            isObscureText: true,
          ),
          SizedBox(
            height: 1.6.sh,
          ),
          AppTextFormField(
            hintText: AppStrings.confirmPassword,
            isObscureText: true,
            isPasswordField: true,
            prefixIconSvgPath: Assets.icons.lock,
          ),
      ],),
    );
  }
}
