import 'package:auto_route/annotations.dart';
import 'package:eatsy/common/constants/app_colors.dart';
import 'package:eatsy/common/widgets/app_button.dart';
import 'package:eatsy/common/widgets/background_pattern_base_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
        SizedBox(
          height: 2.6.screenHeight,
        ),
        Text(
          'CONGRATS !',
          style: TextStyle(
            color: AppColors.lightGreen,
            fontSize: 2.8.screenHeight,
          ),
        ),
        SizedBox(
          height: 2.screenHeight,
        ),
        Text(
          'YOUR PROFILE IS READY TO USE',
          style: TextStyle(color: Colors.black, fontSize: 2.2.screenHeight),
        ),
        const Spacer(flex: 16),
        AppButton(text: "Continue", onPressed: () {}),
        const Spacer(flex: 4),
      ],
    ));
  }
}
