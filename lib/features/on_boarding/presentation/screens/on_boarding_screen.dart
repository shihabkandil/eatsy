import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

import '../../../../common/constants/app_colors.dart';
import '../../../../../common/helpers/localizer_extension.dart';
import '../../../../common/constants/gen/assets.gen.dart';
import '../../../../common/router/app_router.dart';
import '../widgets/on_boarding_body.dart';

@RoutePage()
class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      finishButtonText: context.localizer.nextText,
      onFinish: () => context.router.replace(const LoginRoute()),
      finishButtonStyle: FinishButtonStyle(
        backgroundColor: AppColors.lightGreen,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      controllerColor: AppColors.lightGreen,
      totalPage: 2,
      headerBackgroundColor: Colors.white,
      pageBackgroundColor: Colors.white,
      centerBackground: true,
      background: const [SizedBox(), SizedBox()],
      speed: 1.8,
      pageBodies: [
        OnBoardingBody(
          title: context.localizer.firstOnBoardingHeaderTitle,
          subTitle: context.localizer.firstOnBoardingHeaderSubTitle,
          imagePath: Assets.images.illustrations.firstOnBoarding.path,
        ),
        OnBoardingBody(
          imagePath: Assets.images.illustrations.secondOnBoarding.path,
          title: context.localizer.secondOnBoardingHeaderTitle,
          subTitle: context.localizer.secondOnBoardingHeaderSubTitle,
        ),
      ],
    );
  }
}
