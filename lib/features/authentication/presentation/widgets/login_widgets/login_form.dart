import 'package:flutter/material.dart';

import '../../../../../common/helpers/localizer_extension.dart';
import '../../../../../common/constants/gen/assets.gen.dart';
import '../../../../../common/widgets/app_text_form_field.dart';

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
            hintText: context.localizer.emailHint,
            prefixIconSvgPath: Assets.icons.message.path,
          ),
          const SizedBox(height: 14),
          AppTextFormField(
            focusNode: _focusNode,
            hintText: context.localizer.passwordHint,
            isObscureText: true,
            isPasswordField: true,
            prefixIconSvgPath: Assets.icons.lock.path,
          ),
        ],
      ),
    );
  }
}
