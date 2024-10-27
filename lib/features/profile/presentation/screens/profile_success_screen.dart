import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../../../common/constants/app_colors.dart';
import '../../../../common/widgets/app_button.dart';
import '../../../../common/widgets/background_pattern_base_screen.dart';
import '../../../../common/constants/gen/assets.gen.dart';

@RoutePage()
class ProfileSuccessScreen extends StatelessWidget {
  const ProfileSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPatternBaseScreen(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(flex: 15),
        Assets.icons.successIllustration.svg(),
        SizedBox(height: 12),
        const Text(
          'CONGRATS !',
          style: TextStyle(color: AppColors.lightGreen, fontSize: 16),
        ),
        const SizedBox(height: 12),
        Text(
          'YOUR PROFILE IS READY TO USE',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        const Spacer(flex: 16),
        AppButton(text: "Continue", onPressed: () {}),
        const Spacer(flex: 4),
      ],
    ));
  }
}
