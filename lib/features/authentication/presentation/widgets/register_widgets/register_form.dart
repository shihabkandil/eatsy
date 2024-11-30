import 'package:flutter/material.dart';

import '../../../../../common/constants/gen/assets.gen.dart';
import '../../../../../common/helpers/localizer_extension.dart';
import '../../../../../common/widgets/app_text_form_field.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppTextFormField(
            hintText: context.localizer.usernameHint,
            prefixIconSvgPath: Assets.icons.profile.path,
          ),
          const SizedBox(height: 16),
          AppTextFormField(
            hintText: context.localizer.emailHint,
            prefixIconSvgPath: Assets.icons.message.path,
          ),
          const SizedBox(height: 16),
          AppTextFormField(
            hintText: context.localizer.passwordHint,
            prefixIconSvgPath: Assets.icons.lock.path,
            isPasswordField: true,
            isObscureText: true,
          ),
          const SizedBox(height: 16),
          AppTextFormField(
            hintText: context.localizer.confirmPassword,
            isObscureText: true,
            isPasswordField: true,
            prefixIconSvgPath: Assets.icons.lock.path,
          ),
        ],
      ),
    );
  }
}
