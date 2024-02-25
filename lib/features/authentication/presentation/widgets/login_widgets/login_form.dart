import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../../common/constants/app_strings.dart';
import '../../../../../common/widgets/app_text_form_field.dart';
import '../../../../../gen/assets.gen.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  // TODO add focus node implementation into cubit
  late final FocusNode _focusNode;

  @override
  void initState() {
    _focusNode = FocusNode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppTextFormField(
            onSubmitted: (_) => _focusNode.requestFocus(),
            hintText: AppStrings.emailHint,
            prefixIconSvgPath: Assets.icons.message,
          ),
          SizedBox(
            height: 2.sh,
          ),
          AppTextFormField(
            focusNode: _focusNode,
            hintText: AppStrings.passwordHint,
            isObscureText: true,
            isPasswordField: true,
            prefixIconSvgPath: Assets.icons.lock,
          ),
        ],
      ),
    );
  }
}
