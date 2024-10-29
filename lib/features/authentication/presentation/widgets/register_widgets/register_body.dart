import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../common/helpers/localizer_extension.dart';
import '../../../../../common/router/app_router.dart';
import 'register_form.dart';
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
          AuthHeader(text: context.localizer.registerScreenHeader),
          const SizedBox(height: 14),
          Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const RegisterForm(),
                const SizedBox(height: 20),
                AppButton(
                  text: context.localizer.register,
                  onPressed: () =>
                      context.navigateTo(const UpdateProfilePictureRoute()),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                ClickableText(
                  text: context.localizer.alreadyHaveAnAccount,
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
